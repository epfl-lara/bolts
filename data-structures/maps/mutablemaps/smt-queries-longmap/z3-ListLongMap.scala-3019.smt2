; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42478 () Bool)

(assert start!42478)

(declare-fun b_free!11925 () Bool)

(declare-fun b_next!11925 () Bool)

(assert (=> start!42478 (= b_free!11925 (not b_next!11925))))

(declare-fun tp!41811 () Bool)

(declare-fun b_and!20411 () Bool)

(assert (=> start!42478 (= tp!41811 b_and!20411)))

(declare-fun b!473658 () Bool)

(declare-fun e!277933 () Bool)

(assert (=> b!473658 (= e!277933 true)))

(declare-datatypes ((V!18909 0))(
  ( (V!18910 (val!6721 Int)) )
))
(declare-datatypes ((tuple2!8852 0))(
  ( (tuple2!8853 (_1!4436 (_ BitVec 64)) (_2!4436 V!18909)) )
))
(declare-datatypes ((List!8962 0))(
  ( (Nil!8959) (Cons!8958 (h!9814 tuple2!8852) (t!14942 List!8962)) )
))
(declare-datatypes ((ListLongMap!7779 0))(
  ( (ListLongMap!7780 (toList!3905 List!8962)) )
))
(declare-fun lt!215493 () ListLongMap!7779)

(declare-fun lt!215492 () tuple2!8852)

(declare-fun minValueBefore!38 () V!18909)

(declare-fun +!1711 (ListLongMap!7779 tuple2!8852) ListLongMap!7779)

(assert (=> b!473658 (= (+!1711 lt!215493 lt!215492) (+!1711 (+!1711 lt!215493 (tuple2!8853 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!215492))))

(declare-fun minValueAfter!38 () V!18909)

(assert (=> b!473658 (= lt!215492 (tuple2!8853 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13933 0))(
  ( (Unit!13934) )
))
(declare-fun lt!215491 () Unit!13933)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!148 (ListLongMap!7779 (_ BitVec 64) V!18909 V!18909) Unit!13933)

(assert (=> b!473658 (= lt!215491 (addSameAsAddTwiceSameKeyDiffValues!148 lt!215493 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!215497 () ListLongMap!7779)

(declare-fun zeroValue!794 () V!18909)

(assert (=> b!473658 (= lt!215493 (+!1711 lt!215497 (tuple2!8853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun defaultEntry!841 () Int)

(declare-fun lt!215494 () ListLongMap!7779)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30425 0))(
  ( (array!30426 (arr!14628 (Array (_ BitVec 32) (_ BitVec 64))) (size!14980 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30425)

(declare-datatypes ((ValueCell!6333 0))(
  ( (ValueCellFull!6333 (v!9009 V!18909)) (EmptyCell!6333) )
))
(declare-datatypes ((array!30427 0))(
  ( (array!30428 (arr!14629 (Array (_ BitVec 32) ValueCell!6333)) (size!14981 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30427)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2248 (array!30425 array!30427 (_ BitVec 32) (_ BitVec 32) V!18909 V!18909 (_ BitVec 32) Int) ListLongMap!7779)

(assert (=> b!473658 (= lt!215494 (getCurrentListMap!2248 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lt!215496 () ListLongMap!7779)

(assert (=> b!473658 (= lt!215496 (getCurrentListMap!2248 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!282979 () Bool)

(declare-fun e!277935 () Bool)

(assert (=> start!42478 (=> (not res!282979) (not e!277935))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42478 (= res!282979 (validMask!0 mask!1365))))

(assert (=> start!42478 e!277935))

(declare-fun tp_is_empty!13353 () Bool)

(assert (=> start!42478 tp_is_empty!13353))

(assert (=> start!42478 tp!41811))

(assert (=> start!42478 true))

(declare-fun array_inv!10544 (array!30425) Bool)

(assert (=> start!42478 (array_inv!10544 _keys!1025)))

(declare-fun e!277934 () Bool)

(declare-fun array_inv!10545 (array!30427) Bool)

(assert (=> start!42478 (and (array_inv!10545 _values!833) e!277934)))

(declare-fun b!473659 () Bool)

(declare-fun e!277936 () Bool)

(assert (=> b!473659 (= e!277936 tp_is_empty!13353)))

(declare-fun b!473660 () Bool)

(declare-fun res!282980 () Bool)

(assert (=> b!473660 (=> (not res!282980) (not e!277935))))

(declare-datatypes ((List!8963 0))(
  ( (Nil!8960) (Cons!8959 (h!9815 (_ BitVec 64)) (t!14943 List!8963)) )
))
(declare-fun arrayNoDuplicates!0 (array!30425 (_ BitVec 32) List!8963) Bool)

(assert (=> b!473660 (= res!282980 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8960))))

(declare-fun b!473661 () Bool)

(declare-fun res!282977 () Bool)

(assert (=> b!473661 (=> (not res!282977) (not e!277935))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30425 (_ BitVec 32)) Bool)

(assert (=> b!473661 (= res!282977 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!473662 () Bool)

(assert (=> b!473662 (= e!277935 (not e!277933))))

(declare-fun res!282976 () Bool)

(assert (=> b!473662 (=> res!282976 e!277933)))

(assert (=> b!473662 (= res!282976 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!215490 () ListLongMap!7779)

(assert (=> b!473662 (= lt!215497 lt!215490)))

(declare-fun lt!215495 () Unit!13933)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!257 (array!30425 array!30427 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18909 V!18909 V!18909 V!18909 (_ BitVec 32) Int) Unit!13933)

(assert (=> b!473662 (= lt!215495 (lemmaNoChangeToArrayThenSameMapNoExtras!257 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2062 (array!30425 array!30427 (_ BitVec 32) (_ BitVec 32) V!18909 V!18909 (_ BitVec 32) Int) ListLongMap!7779)

(assert (=> b!473662 (= lt!215490 (getCurrentListMapNoExtraKeys!2062 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!473662 (= lt!215497 (getCurrentListMapNoExtraKeys!2062 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473663 () Bool)

(declare-fun e!277932 () Bool)

(declare-fun mapRes!21745 () Bool)

(assert (=> b!473663 (= e!277934 (and e!277932 mapRes!21745))))

(declare-fun condMapEmpty!21745 () Bool)

(declare-fun mapDefault!21745 () ValueCell!6333)

(assert (=> b!473663 (= condMapEmpty!21745 (= (arr!14629 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6333)) mapDefault!21745)))))

(declare-fun mapIsEmpty!21745 () Bool)

(assert (=> mapIsEmpty!21745 mapRes!21745))

(declare-fun b!473664 () Bool)

(assert (=> b!473664 (= e!277932 tp_is_empty!13353)))

(declare-fun b!473665 () Bool)

(declare-fun res!282978 () Bool)

(assert (=> b!473665 (=> (not res!282978) (not e!277935))))

(assert (=> b!473665 (= res!282978 (and (= (size!14981 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14980 _keys!1025) (size!14981 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!21745 () Bool)

(declare-fun tp!41812 () Bool)

(assert (=> mapNonEmpty!21745 (= mapRes!21745 (and tp!41812 e!277936))))

(declare-fun mapRest!21745 () (Array (_ BitVec 32) ValueCell!6333))

(declare-fun mapValue!21745 () ValueCell!6333)

(declare-fun mapKey!21745 () (_ BitVec 32))

(assert (=> mapNonEmpty!21745 (= (arr!14629 _values!833) (store mapRest!21745 mapKey!21745 mapValue!21745))))

(assert (= (and start!42478 res!282979) b!473665))

(assert (= (and b!473665 res!282978) b!473661))

(assert (= (and b!473661 res!282977) b!473660))

(assert (= (and b!473660 res!282980) b!473662))

(assert (= (and b!473662 (not res!282976)) b!473658))

(assert (= (and b!473663 condMapEmpty!21745) mapIsEmpty!21745))

(assert (= (and b!473663 (not condMapEmpty!21745)) mapNonEmpty!21745))

(get-info :version)

(assert (= (and mapNonEmpty!21745 ((_ is ValueCellFull!6333) mapValue!21745)) b!473659))

(assert (= (and b!473663 ((_ is ValueCellFull!6333) mapDefault!21745)) b!473664))

(assert (= start!42478 b!473663))

(declare-fun m!455853 () Bool)

(assert (=> b!473658 m!455853))

(declare-fun m!455855 () Bool)

(assert (=> b!473658 m!455855))

(declare-fun m!455857 () Bool)

(assert (=> b!473658 m!455857))

(declare-fun m!455859 () Bool)

(assert (=> b!473658 m!455859))

(declare-fun m!455861 () Bool)

(assert (=> b!473658 m!455861))

(assert (=> b!473658 m!455855))

(declare-fun m!455863 () Bool)

(assert (=> b!473658 m!455863))

(declare-fun m!455865 () Bool)

(assert (=> b!473658 m!455865))

(declare-fun m!455867 () Bool)

(assert (=> b!473660 m!455867))

(declare-fun m!455869 () Bool)

(assert (=> start!42478 m!455869))

(declare-fun m!455871 () Bool)

(assert (=> start!42478 m!455871))

(declare-fun m!455873 () Bool)

(assert (=> start!42478 m!455873))

(declare-fun m!455875 () Bool)

(assert (=> b!473661 m!455875))

(declare-fun m!455877 () Bool)

(assert (=> b!473662 m!455877))

(declare-fun m!455879 () Bool)

(assert (=> b!473662 m!455879))

(declare-fun m!455881 () Bool)

(assert (=> b!473662 m!455881))

(declare-fun m!455883 () Bool)

(assert (=> mapNonEmpty!21745 m!455883))

(check-sat b_and!20411 (not start!42478) (not b!473662) (not b!473660) (not mapNonEmpty!21745) tp_is_empty!13353 (not b_next!11925) (not b!473658) (not b!473661))
(check-sat b_and!20411 (not b_next!11925))
