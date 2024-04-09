; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39086 () Bool)

(assert start!39086)

(declare-fun b_free!9345 () Bool)

(declare-fun b_next!9345 () Bool)

(assert (=> start!39086 (= b_free!9345 (not b_next!9345))))

(declare-fun tp!33563 () Bool)

(declare-fun b_and!16749 () Bool)

(assert (=> start!39086 (= tp!33563 b_and!16749)))

(declare-fun b!410172 () Bool)

(declare-fun res!237793 () Bool)

(declare-fun e!245874 () Bool)

(assert (=> b!410172 (=> (not res!237793) (not e!245874))))

(declare-datatypes ((array!24843 0))(
  ( (array!24844 (arr!11868 (Array (_ BitVec 32) (_ BitVec 64))) (size!12220 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24843)

(declare-datatypes ((List!6854 0))(
  ( (Nil!6851) (Cons!6850 (h!7706 (_ BitVec 64)) (t!12036 List!6854)) )
))
(declare-fun arrayNoDuplicates!0 (array!24843 (_ BitVec 32) List!6854) Bool)

(assert (=> b!410172 (= res!237793 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6851))))

(declare-fun b!410173 () Bool)

(declare-fun res!237788 () Bool)

(assert (=> b!410173 (=> (not res!237788) (not e!245874))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!410173 (= res!237788 (validMask!0 mask!1025))))

(declare-fun res!237791 () Bool)

(assert (=> start!39086 (=> (not res!237791) (not e!245874))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39086 (= res!237791 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12220 _keys!709))))))

(assert (=> start!39086 e!245874))

(declare-fun tp_is_empty!10497 () Bool)

(assert (=> start!39086 tp_is_empty!10497))

(assert (=> start!39086 tp!33563))

(assert (=> start!39086 true))

(declare-datatypes ((V!15101 0))(
  ( (V!15102 (val!5293 Int)) )
))
(declare-datatypes ((ValueCell!4905 0))(
  ( (ValueCellFull!4905 (v!7536 V!15101)) (EmptyCell!4905) )
))
(declare-datatypes ((array!24845 0))(
  ( (array!24846 (arr!11869 (Array (_ BitVec 32) ValueCell!4905)) (size!12221 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24845)

(declare-fun e!245873 () Bool)

(declare-fun array_inv!8664 (array!24845) Bool)

(assert (=> start!39086 (and (array_inv!8664 _values!549) e!245873)))

(declare-fun array_inv!8665 (array!24843) Bool)

(assert (=> start!39086 (array_inv!8665 _keys!709)))

(declare-fun mapIsEmpty!17367 () Bool)

(declare-fun mapRes!17367 () Bool)

(assert (=> mapIsEmpty!17367 mapRes!17367))

(declare-fun b!410174 () Bool)

(declare-fun e!245871 () Bool)

(assert (=> b!410174 (= e!245871 tp_is_empty!10497)))

(declare-fun b!410175 () Bool)

(declare-fun res!237795 () Bool)

(declare-fun e!245872 () Bool)

(assert (=> b!410175 (=> (not res!237795) (not e!245872))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!410175 (= res!237795 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!17367 () Bool)

(declare-fun tp!33564 () Bool)

(assert (=> mapNonEmpty!17367 (= mapRes!17367 (and tp!33564 e!245871))))

(declare-fun mapRest!17367 () (Array (_ BitVec 32) ValueCell!4905))

(declare-fun mapKey!17367 () (_ BitVec 32))

(declare-fun mapValue!17367 () ValueCell!4905)

(assert (=> mapNonEmpty!17367 (= (arr!11869 _values!549) (store mapRest!17367 mapKey!17367 mapValue!17367))))

(declare-fun b!410176 () Bool)

(declare-fun res!237792 () Bool)

(assert (=> b!410176 (=> (not res!237792) (not e!245872))))

(declare-fun lt!189033 () array!24843)

(assert (=> b!410176 (= res!237792 (arrayNoDuplicates!0 lt!189033 #b00000000000000000000000000000000 Nil!6851))))

(declare-fun b!410177 () Bool)

(declare-fun res!237794 () Bool)

(assert (=> b!410177 (=> (not res!237794) (not e!245874))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24843 (_ BitVec 32)) Bool)

(assert (=> b!410177 (= res!237794 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!410178 () Bool)

(declare-fun res!237789 () Bool)

(assert (=> b!410178 (=> (not res!237789) (not e!245874))))

(assert (=> b!410178 (= res!237789 (or (= (select (arr!11868 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11868 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!410179 () Bool)

(declare-fun res!237796 () Bool)

(assert (=> b!410179 (=> (not res!237796) (not e!245874))))

(assert (=> b!410179 (= res!237796 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12220 _keys!709))))))

(declare-fun b!410180 () Bool)

(assert (=> b!410180 (= e!245872 false)))

(declare-fun minValue!515 () V!15101)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15101)

(declare-datatypes ((tuple2!6800 0))(
  ( (tuple2!6801 (_1!3410 (_ BitVec 64)) (_2!3410 V!15101)) )
))
(declare-datatypes ((List!6855 0))(
  ( (Nil!6852) (Cons!6851 (h!7707 tuple2!6800) (t!12037 List!6855)) )
))
(declare-datatypes ((ListLongMap!5727 0))(
  ( (ListLongMap!5728 (toList!2879 List!6855)) )
))
(declare-fun lt!189032 () ListLongMap!5727)

(declare-fun getCurrentListMapNoExtraKeys!1089 (array!24843 array!24845 (_ BitVec 32) (_ BitVec 32) V!15101 V!15101 (_ BitVec 32) Int) ListLongMap!5727)

(assert (=> b!410180 (= lt!189032 (getCurrentListMapNoExtraKeys!1089 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!410181 () Bool)

(declare-fun e!245875 () Bool)

(assert (=> b!410181 (= e!245875 tp_is_empty!10497)))

(declare-fun b!410182 () Bool)

(declare-fun res!237790 () Bool)

(assert (=> b!410182 (=> (not res!237790) (not e!245874))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24843 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!410182 (= res!237790 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!410183 () Bool)

(declare-fun res!237798 () Bool)

(assert (=> b!410183 (=> (not res!237798) (not e!245874))))

(assert (=> b!410183 (= res!237798 (and (= (size!12221 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12220 _keys!709) (size!12221 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!410184 () Bool)

(assert (=> b!410184 (= e!245874 e!245872)))

(declare-fun res!237797 () Bool)

(assert (=> b!410184 (=> (not res!237797) (not e!245872))))

(assert (=> b!410184 (= res!237797 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189033 mask!1025))))

(assert (=> b!410184 (= lt!189033 (array!24844 (store (arr!11868 _keys!709) i!563 k0!794) (size!12220 _keys!709)))))

(declare-fun b!410185 () Bool)

(declare-fun res!237787 () Bool)

(assert (=> b!410185 (=> (not res!237787) (not e!245874))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!410185 (= res!237787 (validKeyInArray!0 k0!794))))

(declare-fun b!410186 () Bool)

(assert (=> b!410186 (= e!245873 (and e!245875 mapRes!17367))))

(declare-fun condMapEmpty!17367 () Bool)

(declare-fun mapDefault!17367 () ValueCell!4905)

(assert (=> b!410186 (= condMapEmpty!17367 (= (arr!11869 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4905)) mapDefault!17367)))))

(assert (= (and start!39086 res!237791) b!410173))

(assert (= (and b!410173 res!237788) b!410183))

(assert (= (and b!410183 res!237798) b!410177))

(assert (= (and b!410177 res!237794) b!410172))

(assert (= (and b!410172 res!237793) b!410179))

(assert (= (and b!410179 res!237796) b!410185))

(assert (= (and b!410185 res!237787) b!410178))

(assert (= (and b!410178 res!237789) b!410182))

(assert (= (and b!410182 res!237790) b!410184))

(assert (= (and b!410184 res!237797) b!410176))

(assert (= (and b!410176 res!237792) b!410175))

(assert (= (and b!410175 res!237795) b!410180))

(assert (= (and b!410186 condMapEmpty!17367) mapIsEmpty!17367))

(assert (= (and b!410186 (not condMapEmpty!17367)) mapNonEmpty!17367))

(get-info :version)

(assert (= (and mapNonEmpty!17367 ((_ is ValueCellFull!4905) mapValue!17367)) b!410174))

(assert (= (and b!410186 ((_ is ValueCellFull!4905) mapDefault!17367)) b!410181))

(assert (= start!39086 b!410186))

(declare-fun m!400727 () Bool)

(assert (=> b!410180 m!400727))

(declare-fun m!400729 () Bool)

(assert (=> b!410182 m!400729))

(declare-fun m!400731 () Bool)

(assert (=> b!410178 m!400731))

(declare-fun m!400733 () Bool)

(assert (=> b!410177 m!400733))

(declare-fun m!400735 () Bool)

(assert (=> mapNonEmpty!17367 m!400735))

(declare-fun m!400737 () Bool)

(assert (=> b!410184 m!400737))

(declare-fun m!400739 () Bool)

(assert (=> b!410184 m!400739))

(declare-fun m!400741 () Bool)

(assert (=> b!410172 m!400741))

(declare-fun m!400743 () Bool)

(assert (=> b!410185 m!400743))

(declare-fun m!400745 () Bool)

(assert (=> start!39086 m!400745))

(declare-fun m!400747 () Bool)

(assert (=> start!39086 m!400747))

(declare-fun m!400749 () Bool)

(assert (=> b!410173 m!400749))

(declare-fun m!400751 () Bool)

(assert (=> b!410176 m!400751))

(check-sat (not b!410177) (not b!410176) tp_is_empty!10497 (not b!410173) (not b!410184) (not mapNonEmpty!17367) (not b!410182) (not b_next!9345) (not b!410185) (not start!39086) (not b!410172) (not b!410180) b_and!16749)
(check-sat b_and!16749 (not b_next!9345))
