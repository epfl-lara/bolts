; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40226 () Bool)

(assert start!40226)

(declare-fun b_free!10485 () Bool)

(declare-fun b_next!10485 () Bool)

(assert (=> start!40226 (= b_free!10485 (not b_next!10485))))

(declare-fun tp!36983 () Bool)

(declare-fun b_and!18471 () Bool)

(assert (=> start!40226 (= tp!36983 b_and!18471)))

(declare-fun b!440801 () Bool)

(declare-fun res!260905 () Bool)

(declare-fun e!259627 () Bool)

(assert (=> b!440801 (=> (not res!260905) (not e!259627))))

(declare-datatypes ((array!27061 0))(
  ( (array!27062 (arr!12977 (Array (_ BitVec 32) (_ BitVec 64))) (size!13329 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27061)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!440801 (= res!260905 (or (= (select (arr!12977 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12977 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!440802 () Bool)

(declare-fun e!259632 () Bool)

(declare-fun e!259628 () Bool)

(declare-fun mapRes!19077 () Bool)

(assert (=> b!440802 (= e!259632 (and e!259628 mapRes!19077))))

(declare-fun condMapEmpty!19077 () Bool)

(declare-datatypes ((V!16621 0))(
  ( (V!16622 (val!5863 Int)) )
))
(declare-datatypes ((ValueCell!5475 0))(
  ( (ValueCellFull!5475 (v!8106 V!16621)) (EmptyCell!5475) )
))
(declare-datatypes ((array!27063 0))(
  ( (array!27064 (arr!12978 (Array (_ BitVec 32) ValueCell!5475)) (size!13330 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27063)

(declare-fun mapDefault!19077 () ValueCell!5475)

(assert (=> b!440802 (= condMapEmpty!19077 (= (arr!12978 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5475)) mapDefault!19077)))))

(declare-fun b!440803 () Bool)

(declare-fun res!260908 () Bool)

(assert (=> b!440803 (=> (not res!260908) (not e!259627))))

(assert (=> b!440803 (= res!260908 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13329 _keys!709))))))

(declare-fun mapIsEmpty!19077 () Bool)

(assert (=> mapIsEmpty!19077 mapRes!19077))

(declare-fun b!440804 () Bool)

(declare-fun res!260904 () Bool)

(assert (=> b!440804 (=> (not res!260904) (not e!259627))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!440804 (= res!260904 (and (= (size!13330 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13329 _keys!709) (size!13330 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!440805 () Bool)

(declare-fun res!260912 () Bool)

(assert (=> b!440805 (=> (not res!260912) (not e!259627))))

(declare-datatypes ((List!7760 0))(
  ( (Nil!7757) (Cons!7756 (h!8612 (_ BitVec 64)) (t!13524 List!7760)) )
))
(declare-fun arrayNoDuplicates!0 (array!27061 (_ BitVec 32) List!7760) Bool)

(assert (=> b!440805 (= res!260912 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7757))))

(declare-fun b!440806 () Bool)

(declare-fun res!260916 () Bool)

(assert (=> b!440806 (=> (not res!260916) (not e!259627))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!440806 (= res!260916 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!19077 () Bool)

(declare-fun tp!36984 () Bool)

(declare-fun e!259633 () Bool)

(assert (=> mapNonEmpty!19077 (= mapRes!19077 (and tp!36984 e!259633))))

(declare-fun mapValue!19077 () ValueCell!5475)

(declare-fun mapRest!19077 () (Array (_ BitVec 32) ValueCell!5475))

(declare-fun mapKey!19077 () (_ BitVec 32))

(assert (=> mapNonEmpty!19077 (= (arr!12978 _values!549) (store mapRest!19077 mapKey!19077 mapValue!19077))))

(declare-fun b!440807 () Bool)

(declare-fun e!259631 () Bool)

(assert (=> b!440807 (= e!259631 (not true))))

(declare-fun minValue!515 () V!16621)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!16621)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun lt!202721 () array!27061)

(declare-fun lt!202718 () array!27063)

(declare-fun v!412 () V!16621)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!7718 0))(
  ( (tuple2!7719 (_1!3869 (_ BitVec 64)) (_2!3869 V!16621)) )
))
(declare-datatypes ((List!7761 0))(
  ( (Nil!7758) (Cons!7757 (h!8613 tuple2!7718) (t!13525 List!7761)) )
))
(declare-datatypes ((ListLongMap!6645 0))(
  ( (ListLongMap!6646 (toList!3338 List!7761)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1520 (array!27061 array!27063 (_ BitVec 32) (_ BitVec 32) V!16621 V!16621 (_ BitVec 32) Int) ListLongMap!6645)

(declare-fun +!1474 (ListLongMap!6645 tuple2!7718) ListLongMap!6645)

(assert (=> b!440807 (= (getCurrentListMapNoExtraKeys!1520 lt!202721 lt!202718 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1474 (getCurrentListMapNoExtraKeys!1520 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7719 k0!794 v!412)))))

(declare-datatypes ((Unit!13063 0))(
  ( (Unit!13064) )
))
(declare-fun lt!202720 () Unit!13063)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!652 (array!27061 array!27063 (_ BitVec 32) (_ BitVec 32) V!16621 V!16621 (_ BitVec 32) (_ BitVec 64) V!16621 (_ BitVec 32) Int) Unit!13063)

(assert (=> b!440807 (= lt!202720 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!652 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!440808 () Bool)

(declare-fun e!259630 () Bool)

(assert (=> b!440808 (= e!259627 e!259630)))

(declare-fun res!260909 () Bool)

(assert (=> b!440808 (=> (not res!260909) (not e!259630))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27061 (_ BitVec 32)) Bool)

(assert (=> b!440808 (= res!260909 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202721 mask!1025))))

(assert (=> b!440808 (= lt!202721 (array!27062 (store (arr!12977 _keys!709) i!563 k0!794) (size!13329 _keys!709)))))

(declare-fun b!440809 () Bool)

(declare-fun res!260913 () Bool)

(assert (=> b!440809 (=> (not res!260913) (not e!259627))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!440809 (= res!260913 (validKeyInArray!0 k0!794))))

(declare-fun b!440811 () Bool)

(assert (=> b!440811 (= e!259630 e!259631)))

(declare-fun res!260911 () Bool)

(assert (=> b!440811 (=> (not res!260911) (not e!259631))))

(assert (=> b!440811 (= res!260911 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!202722 () ListLongMap!6645)

(assert (=> b!440811 (= lt!202722 (getCurrentListMapNoExtraKeys!1520 lt!202721 lt!202718 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!440811 (= lt!202718 (array!27064 (store (arr!12978 _values!549) i!563 (ValueCellFull!5475 v!412)) (size!13330 _values!549)))))

(declare-fun lt!202719 () ListLongMap!6645)

(assert (=> b!440811 (= lt!202719 (getCurrentListMapNoExtraKeys!1520 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!440812 () Bool)

(declare-fun tp_is_empty!11637 () Bool)

(assert (=> b!440812 (= e!259633 tp_is_empty!11637)))

(declare-fun b!440813 () Bool)

(declare-fun res!260906 () Bool)

(assert (=> b!440813 (=> (not res!260906) (not e!259630))))

(assert (=> b!440813 (= res!260906 (bvsle from!863 i!563))))

(declare-fun b!440814 () Bool)

(declare-fun res!260907 () Bool)

(assert (=> b!440814 (=> (not res!260907) (not e!259627))))

(assert (=> b!440814 (= res!260907 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!440815 () Bool)

(declare-fun res!260910 () Bool)

(assert (=> b!440815 (=> (not res!260910) (not e!259627))))

(declare-fun arrayContainsKey!0 (array!27061 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!440815 (= res!260910 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!440816 () Bool)

(declare-fun res!260915 () Bool)

(assert (=> b!440816 (=> (not res!260915) (not e!259630))))

(assert (=> b!440816 (= res!260915 (arrayNoDuplicates!0 lt!202721 #b00000000000000000000000000000000 Nil!7757))))

(declare-fun b!440810 () Bool)

(assert (=> b!440810 (= e!259628 tp_is_empty!11637)))

(declare-fun res!260914 () Bool)

(assert (=> start!40226 (=> (not res!260914) (not e!259627))))

(assert (=> start!40226 (= res!260914 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13329 _keys!709))))))

(assert (=> start!40226 e!259627))

(assert (=> start!40226 tp_is_empty!11637))

(assert (=> start!40226 tp!36983))

(assert (=> start!40226 true))

(declare-fun array_inv!9408 (array!27063) Bool)

(assert (=> start!40226 (and (array_inv!9408 _values!549) e!259632)))

(declare-fun array_inv!9409 (array!27061) Bool)

(assert (=> start!40226 (array_inv!9409 _keys!709)))

(assert (= (and start!40226 res!260914) b!440806))

(assert (= (and b!440806 res!260916) b!440804))

(assert (= (and b!440804 res!260904) b!440814))

(assert (= (and b!440814 res!260907) b!440805))

(assert (= (and b!440805 res!260912) b!440803))

(assert (= (and b!440803 res!260908) b!440809))

(assert (= (and b!440809 res!260913) b!440801))

(assert (= (and b!440801 res!260905) b!440815))

(assert (= (and b!440815 res!260910) b!440808))

(assert (= (and b!440808 res!260909) b!440816))

(assert (= (and b!440816 res!260915) b!440813))

(assert (= (and b!440813 res!260906) b!440811))

(assert (= (and b!440811 res!260911) b!440807))

(assert (= (and b!440802 condMapEmpty!19077) mapIsEmpty!19077))

(assert (= (and b!440802 (not condMapEmpty!19077)) mapNonEmpty!19077))

(get-info :version)

(assert (= (and mapNonEmpty!19077 ((_ is ValueCellFull!5475) mapValue!19077)) b!440812))

(assert (= (and b!440802 ((_ is ValueCellFull!5475) mapDefault!19077)) b!440810))

(assert (= start!40226 b!440802))

(declare-fun m!427767 () Bool)

(assert (=> b!440815 m!427767))

(declare-fun m!427769 () Bool)

(assert (=> b!440816 m!427769))

(declare-fun m!427771 () Bool)

(assert (=> b!440809 m!427771))

(declare-fun m!427773 () Bool)

(assert (=> b!440807 m!427773))

(declare-fun m!427775 () Bool)

(assert (=> b!440807 m!427775))

(assert (=> b!440807 m!427775))

(declare-fun m!427777 () Bool)

(assert (=> b!440807 m!427777))

(declare-fun m!427779 () Bool)

(assert (=> b!440807 m!427779))

(declare-fun m!427781 () Bool)

(assert (=> b!440805 m!427781))

(declare-fun m!427783 () Bool)

(assert (=> b!440808 m!427783))

(declare-fun m!427785 () Bool)

(assert (=> b!440808 m!427785))

(declare-fun m!427787 () Bool)

(assert (=> mapNonEmpty!19077 m!427787))

(declare-fun m!427789 () Bool)

(assert (=> b!440801 m!427789))

(declare-fun m!427791 () Bool)

(assert (=> b!440811 m!427791))

(declare-fun m!427793 () Bool)

(assert (=> b!440811 m!427793))

(declare-fun m!427795 () Bool)

(assert (=> b!440811 m!427795))

(declare-fun m!427797 () Bool)

(assert (=> start!40226 m!427797))

(declare-fun m!427799 () Bool)

(assert (=> start!40226 m!427799))

(declare-fun m!427801 () Bool)

(assert (=> b!440814 m!427801))

(declare-fun m!427803 () Bool)

(assert (=> b!440806 m!427803))

(check-sat (not b!440815) (not b!440814) b_and!18471 (not b!440808) (not mapNonEmpty!19077) (not b!440811) (not b!440816) (not b_next!10485) (not b!440805) tp_is_empty!11637 (not start!40226) (not b!440807) (not b!440806) (not b!440809))
(check-sat b_and!18471 (not b_next!10485))
