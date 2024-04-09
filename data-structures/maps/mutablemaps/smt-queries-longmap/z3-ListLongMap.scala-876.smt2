; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20366 () Bool)

(assert start!20366)

(declare-fun b_free!5013 () Bool)

(declare-fun b_next!5013 () Bool)

(assert (=> start!20366 (= b_free!5013 (not b_next!5013))))

(declare-fun tp!18071 () Bool)

(declare-fun b_and!11777 () Bool)

(assert (=> start!20366 (= tp!18071 b_and!11777)))

(declare-fun b!200818 () Bool)

(declare-fun e!131671 () Bool)

(declare-fun e!131668 () Bool)

(assert (=> b!200818 (= e!131671 e!131668)))

(declare-fun res!95815 () Bool)

(assert (=> b!200818 (=> res!95815 e!131668)))

(declare-fun k0!843 () (_ BitVec 64))

(assert (=> b!200818 (= res!95815 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!6139 0))(
  ( (V!6140 (val!2479 Int)) )
))
(declare-datatypes ((tuple2!3746 0))(
  ( (tuple2!3747 (_1!1883 (_ BitVec 64)) (_2!1883 V!6139)) )
))
(declare-datatypes ((List!2686 0))(
  ( (Nil!2683) (Cons!2682 (h!3324 tuple2!3746) (t!7625 List!2686)) )
))
(declare-datatypes ((ListLongMap!2673 0))(
  ( (ListLongMap!2674 (toList!1352 List!2686)) )
))
(declare-fun lt!99625 () ListLongMap!2673)

(declare-fun lt!99630 () ListLongMap!2673)

(assert (=> b!200818 (= lt!99625 lt!99630)))

(declare-fun lt!99627 () ListLongMap!2673)

(declare-fun lt!99635 () tuple2!3746)

(declare-fun +!369 (ListLongMap!2673 tuple2!3746) ListLongMap!2673)

(assert (=> b!200818 (= lt!99630 (+!369 lt!99627 lt!99635))))

(declare-fun lt!99634 () ListLongMap!2673)

(declare-datatypes ((Unit!6045 0))(
  ( (Unit!6046) )
))
(declare-fun lt!99632 () Unit!6045)

(declare-fun v!520 () V!6139)

(declare-fun zeroValue!615 () V!6139)

(declare-fun addCommutativeForDiffKeys!90 (ListLongMap!2673 (_ BitVec 64) V!6139 (_ BitVec 64) V!6139) Unit!6045)

(assert (=> b!200818 (= lt!99632 (addCommutativeForDiffKeys!90 lt!99634 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun lt!99633 () ListLongMap!2673)

(declare-fun lt!99626 () tuple2!3746)

(assert (=> b!200818 (= lt!99633 (+!369 lt!99625 lt!99626))))

(declare-fun lt!99636 () ListLongMap!2673)

(declare-fun lt!99622 () tuple2!3746)

(assert (=> b!200818 (= lt!99625 (+!369 lt!99636 lt!99622))))

(declare-fun lt!99637 () ListLongMap!2673)

(declare-fun lt!99628 () ListLongMap!2673)

(assert (=> b!200818 (= lt!99637 lt!99628)))

(assert (=> b!200818 (= lt!99628 (+!369 lt!99627 lt!99626))))

(assert (=> b!200818 (= lt!99627 (+!369 lt!99634 lt!99622))))

(declare-fun lt!99623 () ListLongMap!2673)

(assert (=> b!200818 (= lt!99633 (+!369 (+!369 lt!99623 lt!99622) lt!99626))))

(declare-fun minValue!615 () V!6139)

(assert (=> b!200818 (= lt!99626 (tuple2!3747 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!200818 (= lt!99622 (tuple2!3747 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun mapNonEmpty!8372 () Bool)

(declare-fun mapRes!8372 () Bool)

(declare-fun tp!18070 () Bool)

(declare-fun e!131666 () Bool)

(assert (=> mapNonEmpty!8372 (= mapRes!8372 (and tp!18070 e!131666))))

(declare-datatypes ((ValueCell!2091 0))(
  ( (ValueCellFull!2091 (v!4445 V!6139)) (EmptyCell!2091) )
))
(declare-datatypes ((array!8968 0))(
  ( (array!8969 (arr!4234 (Array (_ BitVec 32) ValueCell!2091)) (size!4559 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8968)

(declare-fun mapRest!8372 () (Array (_ BitVec 32) ValueCell!2091))

(declare-fun mapValue!8372 () ValueCell!2091)

(declare-fun mapKey!8372 () (_ BitVec 32))

(assert (=> mapNonEmpty!8372 (= (arr!4234 _values!649) (store mapRest!8372 mapKey!8372 mapValue!8372))))

(declare-fun b!200819 () Bool)

(declare-fun res!95818 () Bool)

(declare-fun e!131670 () Bool)

(assert (=> b!200819 (=> (not res!95818) (not e!131670))))

(declare-datatypes ((array!8970 0))(
  ( (array!8971 (arr!4235 (Array (_ BitVec 32) (_ BitVec 64))) (size!4560 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8970)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!200819 (= res!95818 (and (= (size!4559 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4560 _keys!825) (size!4559 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!95817 () Bool)

(assert (=> start!20366 (=> (not res!95817) (not e!131670))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20366 (= res!95817 (validMask!0 mask!1149))))

(assert (=> start!20366 e!131670))

(declare-fun e!131665 () Bool)

(declare-fun array_inv!2777 (array!8968) Bool)

(assert (=> start!20366 (and (array_inv!2777 _values!649) e!131665)))

(assert (=> start!20366 true))

(declare-fun tp_is_empty!4869 () Bool)

(assert (=> start!20366 tp_is_empty!4869))

(declare-fun array_inv!2778 (array!8970) Bool)

(assert (=> start!20366 (array_inv!2778 _keys!825)))

(assert (=> start!20366 tp!18071))

(declare-fun b!200820 () Bool)

(assert (=> b!200820 (= e!131670 (not e!131671))))

(declare-fun res!95819 () Bool)

(assert (=> b!200820 (=> res!95819 e!131671)))

(assert (=> b!200820 (= res!95819 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!936 (array!8970 array!8968 (_ BitVec 32) (_ BitVec 32) V!6139 V!6139 (_ BitVec 32) Int) ListLongMap!2673)

(assert (=> b!200820 (= lt!99637 (getCurrentListMap!936 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99624 () array!8968)

(assert (=> b!200820 (= lt!99633 (getCurrentListMap!936 _keys!825 lt!99624 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!200820 (and (= lt!99623 lt!99636) (= lt!99636 lt!99623))))

(assert (=> b!200820 (= lt!99636 (+!369 lt!99634 lt!99635))))

(assert (=> b!200820 (= lt!99635 (tuple2!3747 k0!843 v!520))))

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lt!99631 () Unit!6045)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!49 (array!8970 array!8968 (_ BitVec 32) (_ BitVec 32) V!6139 V!6139 (_ BitVec 32) (_ BitVec 64) V!6139 (_ BitVec 32) Int) Unit!6045)

(assert (=> b!200820 (= lt!99631 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!49 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!307 (array!8970 array!8968 (_ BitVec 32) (_ BitVec 32) V!6139 V!6139 (_ BitVec 32) Int) ListLongMap!2673)

(assert (=> b!200820 (= lt!99623 (getCurrentListMapNoExtraKeys!307 _keys!825 lt!99624 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!200820 (= lt!99624 (array!8969 (store (arr!4234 _values!649) i!601 (ValueCellFull!2091 v!520)) (size!4559 _values!649)))))

(assert (=> b!200820 (= lt!99634 (getCurrentListMapNoExtraKeys!307 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!200821 () Bool)

(declare-fun res!95816 () Bool)

(assert (=> b!200821 (=> (not res!95816) (not e!131670))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8970 (_ BitVec 32)) Bool)

(assert (=> b!200821 (= res!95816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapIsEmpty!8372 () Bool)

(assert (=> mapIsEmpty!8372 mapRes!8372))

(declare-fun b!200822 () Bool)

(declare-fun res!95814 () Bool)

(assert (=> b!200822 (=> (not res!95814) (not e!131670))))

(assert (=> b!200822 (= res!95814 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4560 _keys!825))))))

(declare-fun b!200823 () Bool)

(assert (=> b!200823 (= e!131666 tp_is_empty!4869)))

(declare-fun b!200824 () Bool)

(declare-fun e!131669 () Bool)

(assert (=> b!200824 (= e!131665 (and e!131669 mapRes!8372))))

(declare-fun condMapEmpty!8372 () Bool)

(declare-fun mapDefault!8372 () ValueCell!2091)

(assert (=> b!200824 (= condMapEmpty!8372 (= (arr!4234 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2091)) mapDefault!8372)))))

(declare-fun b!200825 () Bool)

(declare-fun res!95813 () Bool)

(assert (=> b!200825 (=> (not res!95813) (not e!131670))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!200825 (= res!95813 (validKeyInArray!0 k0!843))))

(declare-fun b!200826 () Bool)

(assert (=> b!200826 (= e!131668 true)))

(assert (=> b!200826 (= (+!369 lt!99630 lt!99626) (+!369 lt!99628 lt!99635))))

(declare-fun lt!99629 () Unit!6045)

(assert (=> b!200826 (= lt!99629 (addCommutativeForDiffKeys!90 lt!99627 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!200827 () Bool)

(declare-fun res!95820 () Bool)

(assert (=> b!200827 (=> (not res!95820) (not e!131670))))

(declare-datatypes ((List!2687 0))(
  ( (Nil!2684) (Cons!2683 (h!3325 (_ BitVec 64)) (t!7626 List!2687)) )
))
(declare-fun arrayNoDuplicates!0 (array!8970 (_ BitVec 32) List!2687) Bool)

(assert (=> b!200827 (= res!95820 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2684))))

(declare-fun b!200828 () Bool)

(declare-fun res!95821 () Bool)

(assert (=> b!200828 (=> (not res!95821) (not e!131670))))

(assert (=> b!200828 (= res!95821 (= (select (arr!4235 _keys!825) i!601) k0!843))))

(declare-fun b!200829 () Bool)

(assert (=> b!200829 (= e!131669 tp_is_empty!4869)))

(assert (= (and start!20366 res!95817) b!200819))

(assert (= (and b!200819 res!95818) b!200821))

(assert (= (and b!200821 res!95816) b!200827))

(assert (= (and b!200827 res!95820) b!200822))

(assert (= (and b!200822 res!95814) b!200825))

(assert (= (and b!200825 res!95813) b!200828))

(assert (= (and b!200828 res!95821) b!200820))

(assert (= (and b!200820 (not res!95819)) b!200818))

(assert (= (and b!200818 (not res!95815)) b!200826))

(assert (= (and b!200824 condMapEmpty!8372) mapIsEmpty!8372))

(assert (= (and b!200824 (not condMapEmpty!8372)) mapNonEmpty!8372))

(get-info :version)

(assert (= (and mapNonEmpty!8372 ((_ is ValueCellFull!2091) mapValue!8372)) b!200823))

(assert (= (and b!200824 ((_ is ValueCellFull!2091) mapDefault!8372)) b!200829))

(assert (= start!20366 b!200824))

(declare-fun m!227509 () Bool)

(assert (=> b!200820 m!227509))

(declare-fun m!227511 () Bool)

(assert (=> b!200820 m!227511))

(declare-fun m!227513 () Bool)

(assert (=> b!200820 m!227513))

(declare-fun m!227515 () Bool)

(assert (=> b!200820 m!227515))

(declare-fun m!227517 () Bool)

(assert (=> b!200820 m!227517))

(declare-fun m!227519 () Bool)

(assert (=> b!200820 m!227519))

(declare-fun m!227521 () Bool)

(assert (=> b!200820 m!227521))

(declare-fun m!227523 () Bool)

(assert (=> b!200818 m!227523))

(declare-fun m!227525 () Bool)

(assert (=> b!200818 m!227525))

(declare-fun m!227527 () Bool)

(assert (=> b!200818 m!227527))

(declare-fun m!227529 () Bool)

(assert (=> b!200818 m!227529))

(assert (=> b!200818 m!227527))

(declare-fun m!227531 () Bool)

(assert (=> b!200818 m!227531))

(declare-fun m!227533 () Bool)

(assert (=> b!200818 m!227533))

(declare-fun m!227535 () Bool)

(assert (=> b!200818 m!227535))

(declare-fun m!227537 () Bool)

(assert (=> b!200818 m!227537))

(declare-fun m!227539 () Bool)

(assert (=> b!200826 m!227539))

(declare-fun m!227541 () Bool)

(assert (=> b!200826 m!227541))

(declare-fun m!227543 () Bool)

(assert (=> b!200826 m!227543))

(declare-fun m!227545 () Bool)

(assert (=> b!200827 m!227545))

(declare-fun m!227547 () Bool)

(assert (=> b!200821 m!227547))

(declare-fun m!227549 () Bool)

(assert (=> start!20366 m!227549))

(declare-fun m!227551 () Bool)

(assert (=> start!20366 m!227551))

(declare-fun m!227553 () Bool)

(assert (=> start!20366 m!227553))

(declare-fun m!227555 () Bool)

(assert (=> b!200825 m!227555))

(declare-fun m!227557 () Bool)

(assert (=> b!200828 m!227557))

(declare-fun m!227559 () Bool)

(assert (=> mapNonEmpty!8372 m!227559))

(check-sat (not b!200826) tp_is_empty!4869 b_and!11777 (not b_next!5013) (not b!200821) (not b!200818) (not mapNonEmpty!8372) (not b!200825) (not b!200820) (not start!20366) (not b!200827))
(check-sat b_and!11777 (not b_next!5013))
