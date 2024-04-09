; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69996 () Bool)

(assert start!69996)

(declare-fun b_free!12405 () Bool)

(declare-fun b_next!12405 () Bool)

(assert (=> start!69996 (= b_free!12405 (not b_next!12405))))

(declare-fun tp!43927 () Bool)

(declare-fun b_and!21191 () Bool)

(assert (=> start!69996 (= tp!43927 b_and!21191)))

(declare-fun b!813176 () Bool)

(declare-fun res!555671 () Bool)

(declare-fun e!450614 () Bool)

(assert (=> b!813176 (=> (not res!555671) (not e!450614))))

(declare-datatypes ((array!44418 0))(
  ( (array!44419 (arr!21266 (Array (_ BitVec 32) (_ BitVec 64))) (size!21687 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44418)

(declare-datatypes ((List!15182 0))(
  ( (Nil!15179) (Cons!15178 (h!16307 (_ BitVec 64)) (t!21505 List!15182)) )
))
(declare-fun arrayNoDuplicates!0 (array!44418 (_ BitVec 32) List!15182) Bool)

(assert (=> b!813176 (= res!555671 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15179))))

(declare-fun mapNonEmpty!22750 () Bool)

(declare-fun mapRes!22750 () Bool)

(declare-fun tp!43926 () Bool)

(declare-fun e!450613 () Bool)

(assert (=> mapNonEmpty!22750 (= mapRes!22750 (and tp!43926 e!450613))))

(declare-fun mapKey!22750 () (_ BitVec 32))

(declare-datatypes ((V!23821 0))(
  ( (V!23822 (val!7105 Int)) )
))
(declare-datatypes ((ValueCell!6642 0))(
  ( (ValueCellFull!6642 (v!9528 V!23821)) (EmptyCell!6642) )
))
(declare-datatypes ((array!44420 0))(
  ( (array!44421 (arr!21267 (Array (_ BitVec 32) ValueCell!6642)) (size!21688 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44420)

(declare-fun mapValue!22750 () ValueCell!6642)

(declare-fun mapRest!22750 () (Array (_ BitVec 32) ValueCell!6642))

(assert (=> mapNonEmpty!22750 (= (arr!21267 _values!788) (store mapRest!22750 mapKey!22750 mapValue!22750))))

(declare-fun mapIsEmpty!22750 () Bool)

(assert (=> mapIsEmpty!22750 mapRes!22750))

(declare-fun b!813177 () Bool)

(declare-fun res!555674 () Bool)

(assert (=> b!813177 (=> (not res!555674) (not e!450614))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44418 (_ BitVec 32)) Bool)

(assert (=> b!813177 (= res!555674 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!813178 () Bool)

(declare-fun res!555673 () Bool)

(assert (=> b!813178 (=> (not res!555673) (not e!450614))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!813178 (= res!555673 (and (= (size!21688 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21687 _keys!976) (size!21688 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!813179 () Bool)

(declare-fun tp_is_empty!14115 () Bool)

(assert (=> b!813179 (= e!450613 tp_is_empty!14115)))

(declare-fun b!813175 () Bool)

(declare-fun e!450615 () Bool)

(assert (=> b!813175 (= e!450615 tp_is_empty!14115)))

(declare-fun res!555672 () Bool)

(assert (=> start!69996 (=> (not res!555672) (not e!450614))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69996 (= res!555672 (validMask!0 mask!1312))))

(assert (=> start!69996 e!450614))

(assert (=> start!69996 tp_is_empty!14115))

(declare-fun array_inv!17007 (array!44418) Bool)

(assert (=> start!69996 (array_inv!17007 _keys!976)))

(assert (=> start!69996 true))

(declare-fun e!450616 () Bool)

(declare-fun array_inv!17008 (array!44420) Bool)

(assert (=> start!69996 (and (array_inv!17008 _values!788) e!450616)))

(assert (=> start!69996 tp!43927))

(declare-fun b!813180 () Bool)

(assert (=> b!813180 (= e!450614 false)))

(declare-fun zeroValueBefore!34 () V!23821)

(declare-fun minValue!754 () V!23821)

(declare-datatypes ((tuple2!9310 0))(
  ( (tuple2!9311 (_1!4665 (_ BitVec 64)) (_2!4665 V!23821)) )
))
(declare-datatypes ((List!15183 0))(
  ( (Nil!15180) (Cons!15179 (h!16308 tuple2!9310) (t!21506 List!15183)) )
))
(declare-datatypes ((ListLongMap!8147 0))(
  ( (ListLongMap!8148 (toList!4089 List!15183)) )
))
(declare-fun lt!364214 () ListLongMap!8147)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2138 (array!44418 array!44420 (_ BitVec 32) (_ BitVec 32) V!23821 V!23821 (_ BitVec 32) Int) ListLongMap!8147)

(assert (=> b!813180 (= lt!364214 (getCurrentListMapNoExtraKeys!2138 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!813181 () Bool)

(assert (=> b!813181 (= e!450616 (and e!450615 mapRes!22750))))

(declare-fun condMapEmpty!22750 () Bool)

(declare-fun mapDefault!22750 () ValueCell!6642)

(assert (=> b!813181 (= condMapEmpty!22750 (= (arr!21267 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6642)) mapDefault!22750)))))

(assert (= (and start!69996 res!555672) b!813178))

(assert (= (and b!813178 res!555673) b!813177))

(assert (= (and b!813177 res!555674) b!813176))

(assert (= (and b!813176 res!555671) b!813180))

(assert (= (and b!813181 condMapEmpty!22750) mapIsEmpty!22750))

(assert (= (and b!813181 (not condMapEmpty!22750)) mapNonEmpty!22750))

(get-info :version)

(assert (= (and mapNonEmpty!22750 ((_ is ValueCellFull!6642) mapValue!22750)) b!813179))

(assert (= (and b!813181 ((_ is ValueCellFull!6642) mapDefault!22750)) b!813175))

(assert (= start!69996 b!813181))

(declare-fun m!755345 () Bool)

(assert (=> b!813180 m!755345))

(declare-fun m!755347 () Bool)

(assert (=> mapNonEmpty!22750 m!755347))

(declare-fun m!755349 () Bool)

(assert (=> b!813177 m!755349))

(declare-fun m!755351 () Bool)

(assert (=> start!69996 m!755351))

(declare-fun m!755353 () Bool)

(assert (=> start!69996 m!755353))

(declare-fun m!755355 () Bool)

(assert (=> start!69996 m!755355))

(declare-fun m!755357 () Bool)

(assert (=> b!813176 m!755357))

(check-sat (not b!813177) (not start!69996) (not b!813180) (not mapNonEmpty!22750) b_and!21191 (not b_next!12405) (not b!813176) tp_is_empty!14115)
(check-sat b_and!21191 (not b_next!12405))
