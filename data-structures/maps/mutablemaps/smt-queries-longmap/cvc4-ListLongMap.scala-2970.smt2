; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42088 () Bool)

(assert start!42088)

(declare-fun b_free!11633 () Bool)

(declare-fun b_next!11633 () Bool)

(assert (=> start!42088 (= b_free!11633 (not b_next!11633))))

(declare-fun tp!40917 () Bool)

(declare-fun b_and!20061 () Bool)

(assert (=> start!42088 (= tp!40917 b_and!20061)))

(declare-fun b!469634 () Bool)

(declare-fun res!280725 () Bool)

(declare-fun e!275064 () Bool)

(assert (=> b!469634 (=> (not res!280725) (not e!275064))))

(declare-datatypes ((array!29857 0))(
  ( (array!29858 (arr!14350 (Array (_ BitVec 32) (_ BitVec 64))) (size!14702 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29857)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29857 (_ BitVec 32)) Bool)

(assert (=> b!469634 (= res!280725 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun res!280723 () Bool)

(assert (=> start!42088 (=> (not res!280723) (not e!275064))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42088 (= res!280723 (validMask!0 mask!1365))))

(assert (=> start!42088 e!275064))

(declare-fun tp_is_empty!13061 () Bool)

(assert (=> start!42088 tp_is_empty!13061))

(assert (=> start!42088 tp!40917))

(assert (=> start!42088 true))

(declare-fun array_inv!10348 (array!29857) Bool)

(assert (=> start!42088 (array_inv!10348 _keys!1025)))

(declare-datatypes ((V!18519 0))(
  ( (V!18520 (val!6575 Int)) )
))
(declare-datatypes ((ValueCell!6187 0))(
  ( (ValueCellFull!6187 (v!8861 V!18519)) (EmptyCell!6187) )
))
(declare-datatypes ((array!29859 0))(
  ( (array!29860 (arr!14351 (Array (_ BitVec 32) ValueCell!6187)) (size!14703 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29859)

(declare-fun e!275068 () Bool)

(declare-fun array_inv!10349 (array!29859) Bool)

(assert (=> start!42088 (and (array_inv!10349 _values!833) e!275068)))

(declare-fun b!469635 () Bool)

(declare-fun res!280722 () Bool)

(assert (=> b!469635 (=> (not res!280722) (not e!275064))))

(declare-datatypes ((List!8750 0))(
  ( (Nil!8747) (Cons!8746 (h!9602 (_ BitVec 64)) (t!14718 List!8750)) )
))
(declare-fun arrayNoDuplicates!0 (array!29857 (_ BitVec 32) List!8750) Bool)

(assert (=> b!469635 (= res!280722 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8747))))

(declare-fun b!469636 () Bool)

(declare-fun e!275067 () Bool)

(assert (=> b!469636 (= e!275067 tp_is_empty!13061)))

(declare-fun b!469637 () Bool)

(declare-fun e!275063 () Bool)

(assert (=> b!469637 (= e!275063 true)))

(declare-datatypes ((tuple2!8632 0))(
  ( (tuple2!8633 (_1!4326 (_ BitVec 64)) (_2!4326 V!18519)) )
))
(declare-datatypes ((List!8751 0))(
  ( (Nil!8748) (Cons!8747 (h!9603 tuple2!8632) (t!14719 List!8751)) )
))
(declare-datatypes ((ListLongMap!7559 0))(
  ( (ListLongMap!7560 (toList!3795 List!8751)) )
))
(declare-fun lt!213017 () ListLongMap!7559)

(declare-fun lt!213012 () tuple2!8632)

(declare-fun minValueBefore!38 () V!18519)

(declare-fun +!1682 (ListLongMap!7559 tuple2!8632) ListLongMap!7559)

(assert (=> b!469637 (= (+!1682 lt!213017 lt!213012) (+!1682 (+!1682 lt!213017 (tuple2!8633 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!213012))))

(declare-fun minValueAfter!38 () V!18519)

(assert (=> b!469637 (= lt!213012 (tuple2!8633 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13714 0))(
  ( (Unit!13715) )
))
(declare-fun lt!213015 () Unit!13714)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!123 (ListLongMap!7559 (_ BitVec 64) V!18519 V!18519) Unit!13714)

(assert (=> b!469637 (= lt!213015 (addSameAsAddTwiceSameKeyDiffValues!123 lt!213017 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!213013 () ListLongMap!7559)

(declare-fun zeroValue!794 () V!18519)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun getCurrentListMap!2204 (array!29857 array!29859 (_ BitVec 32) (_ BitVec 32) V!18519 V!18519 (_ BitVec 32) Int) ListLongMap!7559)

(assert (=> b!469637 (= lt!213013 (getCurrentListMap!2204 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!213016 () ListLongMap!7559)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!469637 (= lt!213016 (getCurrentListMap!2204 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21289 () Bool)

(declare-fun mapRes!21289 () Bool)

(assert (=> mapIsEmpty!21289 mapRes!21289))

(declare-fun mapNonEmpty!21289 () Bool)

(declare-fun tp!40918 () Bool)

(declare-fun e!275065 () Bool)

(assert (=> mapNonEmpty!21289 (= mapRes!21289 (and tp!40918 e!275065))))

(declare-fun mapKey!21289 () (_ BitVec 32))

(declare-fun mapValue!21289 () ValueCell!6187)

(declare-fun mapRest!21289 () (Array (_ BitVec 32) ValueCell!6187))

(assert (=> mapNonEmpty!21289 (= (arr!14351 _values!833) (store mapRest!21289 mapKey!21289 mapValue!21289))))

(declare-fun b!469638 () Bool)

(assert (=> b!469638 (= e!275064 (not e!275063))))

(declare-fun res!280724 () Bool)

(assert (=> b!469638 (=> res!280724 e!275063)))

(assert (=> b!469638 (= res!280724 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!213018 () ListLongMap!7559)

(assert (=> b!469638 (= lt!213017 lt!213018)))

(declare-fun lt!213014 () Unit!13714)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!152 (array!29857 array!29859 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18519 V!18519 V!18519 V!18519 (_ BitVec 32) Int) Unit!13714)

(assert (=> b!469638 (= lt!213014 (lemmaNoChangeToArrayThenSameMapNoExtras!152 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1957 (array!29857 array!29859 (_ BitVec 32) (_ BitVec 32) V!18519 V!18519 (_ BitVec 32) Int) ListLongMap!7559)

(assert (=> b!469638 (= lt!213018 (getCurrentListMapNoExtraKeys!1957 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!469638 (= lt!213017 (getCurrentListMapNoExtraKeys!1957 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!469639 () Bool)

(assert (=> b!469639 (= e!275068 (and e!275067 mapRes!21289))))

(declare-fun condMapEmpty!21289 () Bool)

(declare-fun mapDefault!21289 () ValueCell!6187)

