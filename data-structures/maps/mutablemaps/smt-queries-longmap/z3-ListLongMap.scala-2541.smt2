; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39074 () Bool)

(assert start!39074)

(declare-fun b_free!9333 () Bool)

(declare-fun b_next!9333 () Bool)

(assert (=> start!39074 (= b_free!9333 (not b_next!9333))))

(declare-fun tp!33528 () Bool)

(declare-fun b_and!16737 () Bool)

(assert (=> start!39074 (= tp!33528 b_and!16737)))

(declare-fun b!409903 () Bool)

(declare-fun res!237571 () Bool)

(declare-fun e!245765 () Bool)

(assert (=> b!409903 (=> (not res!237571) (not e!245765))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!409903 (= res!237571 (bvsle from!863 i!563))))

(declare-fun b!409904 () Bool)

(declare-fun res!237572 () Bool)

(declare-fun e!245764 () Bool)

(assert (=> b!409904 (=> (not res!237572) (not e!245764))))

(declare-datatypes ((array!24821 0))(
  ( (array!24822 (arr!11857 (Array (_ BitVec 32) (_ BitVec 64))) (size!12209 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24821)

(assert (=> b!409904 (= res!237572 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12209 _keys!709))))))

(declare-fun b!409905 () Bool)

(declare-fun e!245766 () Bool)

(declare-fun e!245762 () Bool)

(declare-fun mapRes!17349 () Bool)

(assert (=> b!409905 (= e!245766 (and e!245762 mapRes!17349))))

(declare-fun condMapEmpty!17349 () Bool)

(declare-datatypes ((V!15085 0))(
  ( (V!15086 (val!5287 Int)) )
))
(declare-datatypes ((ValueCell!4899 0))(
  ( (ValueCellFull!4899 (v!7530 V!15085)) (EmptyCell!4899) )
))
(declare-datatypes ((array!24823 0))(
  ( (array!24824 (arr!11858 (Array (_ BitVec 32) ValueCell!4899)) (size!12210 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24823)

(declare-fun mapDefault!17349 () ValueCell!4899)

(assert (=> b!409905 (= condMapEmpty!17349 (= (arr!11858 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4899)) mapDefault!17349)))))

(declare-fun b!409906 () Bool)

(assert (=> b!409906 (= e!245764 e!245765)))

(declare-fun res!237582 () Bool)

(assert (=> b!409906 (=> (not res!237582) (not e!245765))))

(declare-fun lt!188997 () array!24821)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24821 (_ BitVec 32)) Bool)

(assert (=> b!409906 (= res!237582 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188997 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!409906 (= lt!188997 (array!24822 (store (arr!11857 _keys!709) i!563 k0!794) (size!12209 _keys!709)))))

(declare-fun b!409907 () Bool)

(declare-fun res!237574 () Bool)

(assert (=> b!409907 (=> (not res!237574) (not e!245764))))

(assert (=> b!409907 (= res!237574 (or (= (select (arr!11857 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11857 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!409908 () Bool)

(declare-fun res!237580 () Bool)

(assert (=> b!409908 (=> (not res!237580) (not e!245764))))

(declare-fun arrayContainsKey!0 (array!24821 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!409908 (= res!237580 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!409909 () Bool)

(declare-fun res!237577 () Bool)

(assert (=> b!409909 (=> (not res!237577) (not e!245765))))

(declare-datatypes ((List!6846 0))(
  ( (Nil!6843) (Cons!6842 (h!7698 (_ BitVec 64)) (t!12028 List!6846)) )
))
(declare-fun arrayNoDuplicates!0 (array!24821 (_ BitVec 32) List!6846) Bool)

(assert (=> b!409909 (= res!237577 (arrayNoDuplicates!0 lt!188997 #b00000000000000000000000000000000 Nil!6843))))

(declare-fun mapIsEmpty!17349 () Bool)

(assert (=> mapIsEmpty!17349 mapRes!17349))

(declare-fun b!409902 () Bool)

(declare-fun res!237581 () Bool)

(assert (=> b!409902 (=> (not res!237581) (not e!245764))))

(assert (=> b!409902 (= res!237581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!237573 () Bool)

(assert (=> start!39074 (=> (not res!237573) (not e!245764))))

(assert (=> start!39074 (= res!237573 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12209 _keys!709))))))

(assert (=> start!39074 e!245764))

(declare-fun tp_is_empty!10485 () Bool)

(assert (=> start!39074 tp_is_empty!10485))

(assert (=> start!39074 tp!33528))

(assert (=> start!39074 true))

(declare-fun array_inv!8656 (array!24823) Bool)

(assert (=> start!39074 (and (array_inv!8656 _values!549) e!245766)))

(declare-fun array_inv!8657 (array!24821) Bool)

(assert (=> start!39074 (array_inv!8657 _keys!709)))

(declare-fun b!409910 () Bool)

(assert (=> b!409910 (= e!245762 tp_is_empty!10485)))

(declare-fun mapNonEmpty!17349 () Bool)

(declare-fun tp!33527 () Bool)

(declare-fun e!245767 () Bool)

(assert (=> mapNonEmpty!17349 (= mapRes!17349 (and tp!33527 e!245767))))

(declare-fun mapRest!17349 () (Array (_ BitVec 32) ValueCell!4899))

(declare-fun mapValue!17349 () ValueCell!4899)

(declare-fun mapKey!17349 () (_ BitVec 32))

(assert (=> mapNonEmpty!17349 (= (arr!11858 _values!549) (store mapRest!17349 mapKey!17349 mapValue!17349))))

(declare-fun b!409911 () Bool)

(declare-fun res!237579 () Bool)

(assert (=> b!409911 (=> (not res!237579) (not e!245764))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!409911 (= res!237579 (validKeyInArray!0 k0!794))))

(declare-fun b!409912 () Bool)

(assert (=> b!409912 (= e!245767 tp_is_empty!10485)))

(declare-fun b!409913 () Bool)

(declare-fun res!237578 () Bool)

(assert (=> b!409913 (=> (not res!237578) (not e!245764))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!409913 (= res!237578 (and (= (size!12210 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12209 _keys!709) (size!12210 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!409914 () Bool)

(assert (=> b!409914 (= e!245765 false)))

(declare-fun minValue!515 () V!15085)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15085)

(declare-datatypes ((tuple2!6794 0))(
  ( (tuple2!6795 (_1!3407 (_ BitVec 64)) (_2!3407 V!15085)) )
))
(declare-datatypes ((List!6847 0))(
  ( (Nil!6844) (Cons!6843 (h!7699 tuple2!6794) (t!12029 List!6847)) )
))
(declare-datatypes ((ListLongMap!5721 0))(
  ( (ListLongMap!5722 (toList!2876 List!6847)) )
))
(declare-fun lt!188996 () ListLongMap!5721)

(declare-fun getCurrentListMapNoExtraKeys!1086 (array!24821 array!24823 (_ BitVec 32) (_ BitVec 32) V!15085 V!15085 (_ BitVec 32) Int) ListLongMap!5721)

(assert (=> b!409914 (= lt!188996 (getCurrentListMapNoExtraKeys!1086 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!409915 () Bool)

(declare-fun res!237576 () Bool)

(assert (=> b!409915 (=> (not res!237576) (not e!245764))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!409915 (= res!237576 (validMask!0 mask!1025))))

(declare-fun b!409916 () Bool)

(declare-fun res!237575 () Bool)

(assert (=> b!409916 (=> (not res!237575) (not e!245764))))

(assert (=> b!409916 (= res!237575 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6843))))

(assert (= (and start!39074 res!237573) b!409915))

(assert (= (and b!409915 res!237576) b!409913))

(assert (= (and b!409913 res!237578) b!409902))

(assert (= (and b!409902 res!237581) b!409916))

(assert (= (and b!409916 res!237575) b!409904))

(assert (= (and b!409904 res!237572) b!409911))

(assert (= (and b!409911 res!237579) b!409907))

(assert (= (and b!409907 res!237574) b!409908))

(assert (= (and b!409908 res!237580) b!409906))

(assert (= (and b!409906 res!237582) b!409909))

(assert (= (and b!409909 res!237577) b!409903))

(assert (= (and b!409903 res!237571) b!409914))

(assert (= (and b!409905 condMapEmpty!17349) mapIsEmpty!17349))

(assert (= (and b!409905 (not condMapEmpty!17349)) mapNonEmpty!17349))

(get-info :version)

(assert (= (and mapNonEmpty!17349 ((_ is ValueCellFull!4899) mapValue!17349)) b!409912))

(assert (= (and b!409905 ((_ is ValueCellFull!4899) mapDefault!17349)) b!409910))

(assert (= start!39074 b!409905))

(declare-fun m!400571 () Bool)

(assert (=> b!409909 m!400571))

(declare-fun m!400573 () Bool)

(assert (=> b!409916 m!400573))

(declare-fun m!400575 () Bool)

(assert (=> b!409914 m!400575))

(declare-fun m!400577 () Bool)

(assert (=> b!409902 m!400577))

(declare-fun m!400579 () Bool)

(assert (=> b!409911 m!400579))

(declare-fun m!400581 () Bool)

(assert (=> start!39074 m!400581))

(declare-fun m!400583 () Bool)

(assert (=> start!39074 m!400583))

(declare-fun m!400585 () Bool)

(assert (=> b!409906 m!400585))

(declare-fun m!400587 () Bool)

(assert (=> b!409906 m!400587))

(declare-fun m!400589 () Bool)

(assert (=> b!409907 m!400589))

(declare-fun m!400591 () Bool)

(assert (=> mapNonEmpty!17349 m!400591))

(declare-fun m!400593 () Bool)

(assert (=> b!409908 m!400593))

(declare-fun m!400595 () Bool)

(assert (=> b!409915 m!400595))

(check-sat (not b!409915) (not b!409911) tp_is_empty!10485 (not b!409914) (not b!409906) (not b!409909) (not b!409916) b_and!16737 (not b_next!9333) (not start!39074) (not b!409908) (not b!409902) (not mapNonEmpty!17349))
(check-sat b_and!16737 (not b_next!9333))
