; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42192 () Bool)

(assert start!42192)

(declare-fun b_free!11703 () Bool)

(declare-fun b_next!11703 () Bool)

(assert (=> start!42192 (= b_free!11703 (not b_next!11703))))

(declare-fun tp!41133 () Bool)

(declare-fun b_and!20151 () Bool)

(assert (=> start!42192 (= tp!41133 b_and!20151)))

(declare-fun mapIsEmpty!21400 () Bool)

(declare-fun mapRes!21400 () Bool)

(assert (=> mapIsEmpty!21400 mapRes!21400))

(declare-fun mapNonEmpty!21400 () Bool)

(declare-fun tp!41134 () Bool)

(declare-fun e!275777 () Bool)

(assert (=> mapNonEmpty!21400 (= mapRes!21400 (and tp!41134 e!275777))))

(declare-datatypes ((V!18613 0))(
  ( (V!18614 (val!6610 Int)) )
))
(declare-datatypes ((ValueCell!6222 0))(
  ( (ValueCellFull!6222 (v!8897 V!18613)) (EmptyCell!6222) )
))
(declare-datatypes ((array!29991 0))(
  ( (array!29992 (arr!14415 (Array (_ BitVec 32) ValueCell!6222)) (size!14767 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29991)

(declare-fun mapRest!21400 () (Array (_ BitVec 32) ValueCell!6222))

(declare-fun mapKey!21400 () (_ BitVec 32))

(declare-fun mapValue!21400 () ValueCell!6222)

(assert (=> mapNonEmpty!21400 (= (arr!14415 _values!833) (store mapRest!21400 mapKey!21400 mapValue!21400))))

(declare-fun b!470652 () Bool)

(declare-fun res!281272 () Bool)

(declare-fun e!275774 () Bool)

(assert (=> b!470652 (=> (not res!281272) (not e!275774))))

(declare-datatypes ((array!29993 0))(
  ( (array!29994 (arr!14416 (Array (_ BitVec 32) (_ BitVec 64))) (size!14768 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29993)

(declare-datatypes ((List!8797 0))(
  ( (Nil!8794) (Cons!8793 (h!9649 (_ BitVec 64)) (t!14769 List!8797)) )
))
(declare-fun arrayNoDuplicates!0 (array!29993 (_ BitVec 32) List!8797) Bool)

(assert (=> b!470652 (= res!281272 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8794))))

(declare-fun b!470653 () Bool)

(declare-fun e!275775 () Bool)

(declare-fun e!275776 () Bool)

(assert (=> b!470653 (= e!275775 (and e!275776 mapRes!21400))))

(declare-fun condMapEmpty!21400 () Bool)

(declare-fun mapDefault!21400 () ValueCell!6222)

(assert (=> b!470653 (= condMapEmpty!21400 (= (arr!14415 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6222)) mapDefault!21400)))))

(declare-fun b!470654 () Bool)

(declare-fun res!281271 () Bool)

(assert (=> b!470654 (=> (not res!281271) (not e!275774))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!470654 (= res!281271 (and (= (size!14767 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14768 _keys!1025) (size!14767 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!281269 () Bool)

(assert (=> start!42192 (=> (not res!281269) (not e!275774))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42192 (= res!281269 (validMask!0 mask!1365))))

(assert (=> start!42192 e!275774))

(declare-fun tp_is_empty!13131 () Bool)

(assert (=> start!42192 tp_is_empty!13131))

(assert (=> start!42192 tp!41133))

(assert (=> start!42192 true))

(declare-fun array_inv!10404 (array!29993) Bool)

(assert (=> start!42192 (array_inv!10404 _keys!1025)))

(declare-fun array_inv!10405 (array!29991) Bool)

(assert (=> start!42192 (and (array_inv!10405 _values!833) e!275775)))

(declare-fun b!470655 () Bool)

(assert (=> b!470655 (= e!275774 (not true))))

(declare-datatypes ((tuple2!8674 0))(
  ( (tuple2!8675 (_1!4347 (_ BitVec 64)) (_2!4347 V!18613)) )
))
(declare-datatypes ((List!8798 0))(
  ( (Nil!8795) (Cons!8794 (h!9650 tuple2!8674) (t!14770 List!8798)) )
))
(declare-datatypes ((ListLongMap!7601 0))(
  ( (ListLongMap!7602 (toList!3816 List!8798)) )
))
(declare-fun lt!213595 () ListLongMap!7601)

(declare-fun lt!213594 () ListLongMap!7601)

(assert (=> b!470655 (= lt!213595 lt!213594)))

(declare-datatypes ((Unit!13758 0))(
  ( (Unit!13759) )
))
(declare-fun lt!213596 () Unit!13758)

(declare-fun minValueBefore!38 () V!18613)

(declare-fun zeroValue!794 () V!18613)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18613)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!173 (array!29993 array!29991 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18613 V!18613 V!18613 V!18613 (_ BitVec 32) Int) Unit!13758)

(assert (=> b!470655 (= lt!213596 (lemmaNoChangeToArrayThenSameMapNoExtras!173 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1978 (array!29993 array!29991 (_ BitVec 32) (_ BitVec 32) V!18613 V!18613 (_ BitVec 32) Int) ListLongMap!7601)

(assert (=> b!470655 (= lt!213594 (getCurrentListMapNoExtraKeys!1978 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!470655 (= lt!213595 (getCurrentListMapNoExtraKeys!1978 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!470656 () Bool)

(assert (=> b!470656 (= e!275777 tp_is_empty!13131)))

(declare-fun b!470657 () Bool)

(assert (=> b!470657 (= e!275776 tp_is_empty!13131)))

(declare-fun b!470658 () Bool)

(declare-fun res!281270 () Bool)

(assert (=> b!470658 (=> (not res!281270) (not e!275774))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29993 (_ BitVec 32)) Bool)

(assert (=> b!470658 (= res!281270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(assert (= (and start!42192 res!281269) b!470654))

(assert (= (and b!470654 res!281271) b!470658))

(assert (= (and b!470658 res!281270) b!470652))

(assert (= (and b!470652 res!281272) b!470655))

(assert (= (and b!470653 condMapEmpty!21400) mapIsEmpty!21400))

(assert (= (and b!470653 (not condMapEmpty!21400)) mapNonEmpty!21400))

(get-info :version)

(assert (= (and mapNonEmpty!21400 ((_ is ValueCellFull!6222) mapValue!21400)) b!470656))

(assert (= (and b!470653 ((_ is ValueCellFull!6222) mapDefault!21400)) b!470657))

(assert (= start!42192 b!470653))

(declare-fun m!452911 () Bool)

(assert (=> b!470655 m!452911))

(declare-fun m!452913 () Bool)

(assert (=> b!470655 m!452913))

(declare-fun m!452915 () Bool)

(assert (=> b!470655 m!452915))

(declare-fun m!452917 () Bool)

(assert (=> b!470658 m!452917))

(declare-fun m!452919 () Bool)

(assert (=> mapNonEmpty!21400 m!452919))

(declare-fun m!452921 () Bool)

(assert (=> start!42192 m!452921))

(declare-fun m!452923 () Bool)

(assert (=> start!42192 m!452923))

(declare-fun m!452925 () Bool)

(assert (=> start!42192 m!452925))

(declare-fun m!452927 () Bool)

(assert (=> b!470652 m!452927))

(check-sat (not b_next!11703) tp_is_empty!13131 (not b!470652) (not b!470658) (not b!470655) b_and!20151 (not mapNonEmpty!21400) (not start!42192))
(check-sat b_and!20151 (not b_next!11703))
