; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37596 () Bool)

(assert start!37596)

(declare-fun b_free!8715 () Bool)

(declare-fun b_next!8715 () Bool)

(assert (=> start!37596 (= b_free!8715 (not b_next!8715))))

(declare-fun tp!30860 () Bool)

(declare-fun b_and!15975 () Bool)

(assert (=> start!37596 (= tp!30860 b_and!15975)))

(declare-fun b!384106 () Bool)

(declare-fun e!233229 () Bool)

(declare-fun e!233231 () Bool)

(assert (=> b!384106 (= e!233229 (not e!233231))))

(declare-fun res!218949 () Bool)

(assert (=> b!384106 (=> res!218949 e!233231)))

(declare-fun lt!180748 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!384106 (= res!218949 (or (and (not lt!180748) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!180748) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!180748)))))

(assert (=> b!384106 (= lt!180748 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((V!13589 0))(
  ( (V!13590 (val!4726 Int)) )
))
(declare-datatypes ((ValueCell!4338 0))(
  ( (ValueCellFull!4338 (v!6919 V!13589)) (EmptyCell!4338) )
))
(declare-datatypes ((array!22613 0))(
  ( (array!22614 (arr!10772 (Array (_ BitVec 32) ValueCell!4338)) (size!11124 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22613)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6316 0))(
  ( (tuple2!6317 (_1!3168 (_ BitVec 64)) (_2!3168 V!13589)) )
))
(declare-datatypes ((List!6183 0))(
  ( (Nil!6180) (Cons!6179 (h!7035 tuple2!6316) (t!11341 List!6183)) )
))
(declare-datatypes ((ListLongMap!5243 0))(
  ( (ListLongMap!5244 (toList!2637 List!6183)) )
))
(declare-fun lt!180743 () ListLongMap!5243)

(declare-fun zeroValue!472 () V!13589)

(declare-datatypes ((array!22615 0))(
  ( (array!22616 (arr!10773 (Array (_ BitVec 32) (_ BitVec 64))) (size!11125 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22615)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13589)

(declare-fun getCurrentListMap!2053 (array!22615 array!22613 (_ BitVec 32) (_ BitVec 32) V!13589 V!13589 (_ BitVec 32) Int) ListLongMap!5243)

(assert (=> b!384106 (= lt!180743 (getCurrentListMap!2053 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180745 () array!22613)

(declare-fun lt!180747 () array!22615)

(declare-fun lt!180742 () ListLongMap!5243)

(assert (=> b!384106 (= lt!180742 (getCurrentListMap!2053 lt!180747 lt!180745 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180746 () ListLongMap!5243)

(declare-fun lt!180744 () ListLongMap!5243)

(assert (=> b!384106 (and (= lt!180746 lt!180744) (= lt!180744 lt!180746))))

(declare-fun lt!180738 () ListLongMap!5243)

(declare-fun lt!180739 () tuple2!6316)

(declare-fun +!973 (ListLongMap!5243 tuple2!6316) ListLongMap!5243)

(assert (=> b!384106 (= lt!180744 (+!973 lt!180738 lt!180739))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun v!373 () V!13589)

(assert (=> b!384106 (= lt!180739 (tuple2!6317 k0!778 v!373))))

(declare-datatypes ((Unit!11835 0))(
  ( (Unit!11836) )
))
(declare-fun lt!180741 () Unit!11835)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!204 (array!22615 array!22613 (_ BitVec 32) (_ BitVec 32) V!13589 V!13589 (_ BitVec 32) (_ BitVec 64) V!13589 (_ BitVec 32) Int) Unit!11835)

(assert (=> b!384106 (= lt!180741 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!204 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!871 (array!22615 array!22613 (_ BitVec 32) (_ BitVec 32) V!13589 V!13589 (_ BitVec 32) Int) ListLongMap!5243)

(assert (=> b!384106 (= lt!180746 (getCurrentListMapNoExtraKeys!871 lt!180747 lt!180745 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!384106 (= lt!180745 (array!22614 (store (arr!10772 _values!506) i!548 (ValueCellFull!4338 v!373)) (size!11124 _values!506)))))

(assert (=> b!384106 (= lt!180738 (getCurrentListMapNoExtraKeys!871 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!384107 () Bool)

(declare-fun res!218952 () Bool)

(declare-fun e!233230 () Bool)

(assert (=> b!384107 (=> (not res!218952) (not e!233230))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!384107 (= res!218952 (validKeyInArray!0 k0!778))))

(declare-fun b!384108 () Bool)

(declare-fun e!233235 () Bool)

(declare-fun e!233234 () Bool)

(declare-fun mapRes!15609 () Bool)

(assert (=> b!384108 (= e!233235 (and e!233234 mapRes!15609))))

(declare-fun condMapEmpty!15609 () Bool)

(declare-fun mapDefault!15609 () ValueCell!4338)

(assert (=> b!384108 (= condMapEmpty!15609 (= (arr!10772 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4338)) mapDefault!15609)))))

(declare-fun b!384109 () Bool)

(declare-fun res!218944 () Bool)

(assert (=> b!384109 (=> (not res!218944) (not e!233230))))

(declare-datatypes ((List!6184 0))(
  ( (Nil!6181) (Cons!6180 (h!7036 (_ BitVec 64)) (t!11342 List!6184)) )
))
(declare-fun arrayNoDuplicates!0 (array!22615 (_ BitVec 32) List!6184) Bool)

(assert (=> b!384109 (= res!218944 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6181))))

(declare-fun res!218945 () Bool)

(assert (=> start!37596 (=> (not res!218945) (not e!233230))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37596 (= res!218945 (validMask!0 mask!970))))

(assert (=> start!37596 e!233230))

(declare-fun array_inv!7910 (array!22613) Bool)

(assert (=> start!37596 (and (array_inv!7910 _values!506) e!233235)))

(assert (=> start!37596 tp!30860))

(assert (=> start!37596 true))

(declare-fun tp_is_empty!9363 () Bool)

(assert (=> start!37596 tp_is_empty!9363))

(declare-fun array_inv!7911 (array!22615) Bool)

(assert (=> start!37596 (array_inv!7911 _keys!658)))

(declare-fun b!384110 () Bool)

(declare-fun res!218947 () Bool)

(assert (=> b!384110 (=> (not res!218947) (not e!233230))))

(assert (=> b!384110 (= res!218947 (or (= (select (arr!10773 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10773 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!384111 () Bool)

(assert (=> b!384111 (= e!233231 true)))

(declare-fun lt!180740 () ListLongMap!5243)

(assert (=> b!384111 (= lt!180740 (+!973 lt!180743 lt!180739))))

(assert (=> b!384111 (= lt!180742 lt!180746)))

(declare-fun b!384112 () Bool)

(declare-fun res!218953 () Bool)

(assert (=> b!384112 (=> (not res!218953) (not e!233230))))

(assert (=> b!384112 (= res!218953 (and (= (size!11124 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11125 _keys!658) (size!11124 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!384113 () Bool)

(declare-fun e!233232 () Bool)

(assert (=> b!384113 (= e!233232 tp_is_empty!9363)))

(declare-fun b!384114 () Bool)

(declare-fun res!218951 () Bool)

(assert (=> b!384114 (=> (not res!218951) (not e!233230))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22615 (_ BitVec 32)) Bool)

(assert (=> b!384114 (= res!218951 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!384115 () Bool)

(declare-fun res!218946 () Bool)

(assert (=> b!384115 (=> (not res!218946) (not e!233229))))

(assert (=> b!384115 (= res!218946 (arrayNoDuplicates!0 lt!180747 #b00000000000000000000000000000000 Nil!6181))))

(declare-fun b!384116 () Bool)

(declare-fun res!218948 () Bool)

(assert (=> b!384116 (=> (not res!218948) (not e!233230))))

(declare-fun arrayContainsKey!0 (array!22615 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!384116 (= res!218948 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!384117 () Bool)

(assert (=> b!384117 (= e!233234 tp_is_empty!9363)))

(declare-fun mapIsEmpty!15609 () Bool)

(assert (=> mapIsEmpty!15609 mapRes!15609))

(declare-fun b!384118 () Bool)

(declare-fun res!218954 () Bool)

(assert (=> b!384118 (=> (not res!218954) (not e!233230))))

(assert (=> b!384118 (= res!218954 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11125 _keys!658))))))

(declare-fun mapNonEmpty!15609 () Bool)

(declare-fun tp!30861 () Bool)

(assert (=> mapNonEmpty!15609 (= mapRes!15609 (and tp!30861 e!233232))))

(declare-fun mapValue!15609 () ValueCell!4338)

(declare-fun mapKey!15609 () (_ BitVec 32))

(declare-fun mapRest!15609 () (Array (_ BitVec 32) ValueCell!4338))

(assert (=> mapNonEmpty!15609 (= (arr!10772 _values!506) (store mapRest!15609 mapKey!15609 mapValue!15609))))

(declare-fun b!384119 () Bool)

(assert (=> b!384119 (= e!233230 e!233229)))

(declare-fun res!218950 () Bool)

(assert (=> b!384119 (=> (not res!218950) (not e!233229))))

(assert (=> b!384119 (= res!218950 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!180747 mask!970))))

(assert (=> b!384119 (= lt!180747 (array!22616 (store (arr!10773 _keys!658) i!548 k0!778) (size!11125 _keys!658)))))

(assert (= (and start!37596 res!218945) b!384112))

(assert (= (and b!384112 res!218953) b!384114))

(assert (= (and b!384114 res!218951) b!384109))

(assert (= (and b!384109 res!218944) b!384118))

(assert (= (and b!384118 res!218954) b!384107))

(assert (= (and b!384107 res!218952) b!384110))

(assert (= (and b!384110 res!218947) b!384116))

(assert (= (and b!384116 res!218948) b!384119))

(assert (= (and b!384119 res!218950) b!384115))

(assert (= (and b!384115 res!218946) b!384106))

(assert (= (and b!384106 (not res!218949)) b!384111))

(assert (= (and b!384108 condMapEmpty!15609) mapIsEmpty!15609))

(assert (= (and b!384108 (not condMapEmpty!15609)) mapNonEmpty!15609))

(get-info :version)

(assert (= (and mapNonEmpty!15609 ((_ is ValueCellFull!4338) mapValue!15609)) b!384113))

(assert (= (and b!384108 ((_ is ValueCellFull!4338) mapDefault!15609)) b!384117))

(assert (= start!37596 b!384108))

(declare-fun m!380841 () Bool)

(assert (=> b!384114 m!380841))

(declare-fun m!380843 () Bool)

(assert (=> b!384106 m!380843))

(declare-fun m!380845 () Bool)

(assert (=> b!384106 m!380845))

(declare-fun m!380847 () Bool)

(assert (=> b!384106 m!380847))

(declare-fun m!380849 () Bool)

(assert (=> b!384106 m!380849))

(declare-fun m!380851 () Bool)

(assert (=> b!384106 m!380851))

(declare-fun m!380853 () Bool)

(assert (=> b!384106 m!380853))

(declare-fun m!380855 () Bool)

(assert (=> b!384106 m!380855))

(declare-fun m!380857 () Bool)

(assert (=> b!384119 m!380857))

(declare-fun m!380859 () Bool)

(assert (=> b!384119 m!380859))

(declare-fun m!380861 () Bool)

(assert (=> b!384110 m!380861))

(declare-fun m!380863 () Bool)

(assert (=> mapNonEmpty!15609 m!380863))

(declare-fun m!380865 () Bool)

(assert (=> b!384115 m!380865))

(declare-fun m!380867 () Bool)

(assert (=> b!384109 m!380867))

(declare-fun m!380869 () Bool)

(assert (=> start!37596 m!380869))

(declare-fun m!380871 () Bool)

(assert (=> start!37596 m!380871))

(declare-fun m!380873 () Bool)

(assert (=> start!37596 m!380873))

(declare-fun m!380875 () Bool)

(assert (=> b!384116 m!380875))

(declare-fun m!380877 () Bool)

(assert (=> b!384107 m!380877))

(declare-fun m!380879 () Bool)

(assert (=> b!384111 m!380879))

(check-sat (not b!384115) (not b_next!8715) (not b!384106) (not start!37596) tp_is_empty!9363 (not b!384109) (not b!384114) (not b!384107) (not b!384111) b_and!15975 (not b!384116) (not b!384119) (not mapNonEmpty!15609))
(check-sat b_and!15975 (not b_next!8715))
