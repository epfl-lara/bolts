; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37356 () Bool)

(assert start!37356)

(declare-fun b_free!8475 () Bool)

(declare-fun b_next!8475 () Bool)

(assert (=> start!37356 (= b_free!8475 (not b_next!8475))))

(declare-fun tp!30140 () Bool)

(declare-fun b_and!15735 () Bool)

(assert (=> start!37356 (= tp!30140 b_and!15735)))

(declare-fun b!378945 () Bool)

(declare-fun res!214873 () Bool)

(declare-fun e!230589 () Bool)

(assert (=> b!378945 (=> (not res!214873) (not e!230589))))

(declare-datatypes ((V!13269 0))(
  ( (V!13270 (val!4606 Int)) )
))
(declare-datatypes ((ValueCell!4218 0))(
  ( (ValueCellFull!4218 (v!6799 V!13269)) (EmptyCell!4218) )
))
(declare-datatypes ((array!22143 0))(
  ( (array!22144 (arr!10537 (Array (_ BitVec 32) ValueCell!4218)) (size!10889 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22143)

(declare-datatypes ((array!22145 0))(
  ( (array!22146 (arr!10538 (Array (_ BitVec 32) (_ BitVec 64))) (size!10890 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22145)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!378945 (= res!214873 (and (= (size!10889 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10890 _keys!658) (size!10889 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!378946 () Bool)

(declare-fun res!214871 () Bool)

(assert (=> b!378946 (=> (not res!214871) (not e!230589))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22145 (_ BitVec 32)) Bool)

(assert (=> b!378946 (= res!214871 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!378947 () Bool)

(declare-fun res!214872 () Bool)

(assert (=> b!378947 (=> (not res!214872) (not e!230589))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22145 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!378947 (= res!214872 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!378948 () Bool)

(declare-fun e!230593 () Bool)

(assert (=> b!378948 (= e!230589 e!230593)))

(declare-fun res!214864 () Bool)

(assert (=> b!378948 (=> (not res!214864) (not e!230593))))

(declare-fun lt!176890 () array!22145)

(assert (=> b!378948 (= res!214864 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!176890 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!378948 (= lt!176890 (array!22146 (store (arr!10538 _keys!658) i!548 k0!778) (size!10890 _keys!658)))))

(declare-fun b!378949 () Bool)

(declare-fun e!230588 () Bool)

(assert (=> b!378949 (= e!230588 true)))

(declare-datatypes ((tuple2!6128 0))(
  ( (tuple2!6129 (_1!3074 (_ BitVec 64)) (_2!3074 V!13269)) )
))
(declare-datatypes ((List!6000 0))(
  ( (Nil!5997) (Cons!5996 (h!6852 tuple2!6128) (t!11158 List!6000)) )
))
(declare-datatypes ((ListLongMap!5055 0))(
  ( (ListLongMap!5056 (toList!2543 List!6000)) )
))
(declare-fun lt!176889 () ListLongMap!5055)

(declare-fun lt!176891 () ListLongMap!5055)

(declare-fun lt!176888 () tuple2!6128)

(declare-fun +!884 (ListLongMap!5055 tuple2!6128) ListLongMap!5055)

(assert (=> b!378949 (= lt!176889 (+!884 lt!176891 lt!176888))))

(declare-fun v!373 () V!13269)

(declare-datatypes ((Unit!11663 0))(
  ( (Unit!11664) )
))
(declare-fun lt!176895 () Unit!11663)

(declare-fun lt!176897 () ListLongMap!5055)

(declare-fun minValue!472 () V!13269)

(declare-fun addCommutativeForDiffKeys!298 (ListLongMap!5055 (_ BitVec 64) V!13269 (_ BitVec 64) V!13269) Unit!11663)

(assert (=> b!378949 (= lt!176895 (addCommutativeForDiffKeys!298 lt!176897 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!378950 () Bool)

(declare-fun e!230591 () Bool)

(declare-fun tp_is_empty!9123 () Bool)

(assert (=> b!378950 (= e!230591 tp_is_empty!9123)))

(declare-fun b!378951 () Bool)

(declare-fun res!214866 () Bool)

(assert (=> b!378951 (=> (not res!214866) (not e!230589))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!378951 (= res!214866 (validKeyInArray!0 k0!778))))

(declare-fun mapNonEmpty!15249 () Bool)

(declare-fun mapRes!15249 () Bool)

(declare-fun tp!30141 () Bool)

(assert (=> mapNonEmpty!15249 (= mapRes!15249 (and tp!30141 e!230591))))

(declare-fun mapValue!15249 () ValueCell!4218)

(declare-fun mapRest!15249 () (Array (_ BitVec 32) ValueCell!4218))

(declare-fun mapKey!15249 () (_ BitVec 32))

(assert (=> mapNonEmpty!15249 (= (arr!10537 _values!506) (store mapRest!15249 mapKey!15249 mapValue!15249))))

(declare-fun b!378952 () Bool)

(declare-fun res!214869 () Bool)

(assert (=> b!378952 (=> (not res!214869) (not e!230589))))

(assert (=> b!378952 (= res!214869 (or (= (select (arr!10538 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10538 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!15249 () Bool)

(assert (=> mapIsEmpty!15249 mapRes!15249))

(declare-fun b!378953 () Bool)

(declare-fun res!214874 () Bool)

(assert (=> b!378953 (=> (not res!214874) (not e!230589))))

(assert (=> b!378953 (= res!214874 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10890 _keys!658))))))

(declare-fun b!378954 () Bool)

(declare-fun res!214868 () Bool)

(assert (=> b!378954 (=> (not res!214868) (not e!230593))))

(declare-datatypes ((List!6001 0))(
  ( (Nil!5998) (Cons!5997 (h!6853 (_ BitVec 64)) (t!11159 List!6001)) )
))
(declare-fun arrayNoDuplicates!0 (array!22145 (_ BitVec 32) List!6001) Bool)

(assert (=> b!378954 (= res!214868 (arrayNoDuplicates!0 lt!176890 #b00000000000000000000000000000000 Nil!5998))))

(declare-fun b!378955 () Bool)

(declare-fun e!230590 () Bool)

(assert (=> b!378955 (= e!230590 tp_is_empty!9123)))

(declare-fun b!378956 () Bool)

(declare-fun res!214870 () Bool)

(assert (=> b!378956 (=> (not res!214870) (not e!230589))))

(assert (=> b!378956 (= res!214870 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5998))))

(declare-fun b!378958 () Bool)

(declare-fun e!230592 () Bool)

(assert (=> b!378958 (= e!230593 (not e!230592))))

(declare-fun res!214865 () Bool)

(assert (=> b!378958 (=> res!214865 e!230592)))

(assert (=> b!378958 (= res!214865 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!176892 () ListLongMap!5055)

(declare-fun zeroValue!472 () V!13269)

(declare-fun getCurrentListMap!1971 (array!22145 array!22143 (_ BitVec 32) (_ BitVec 32) V!13269 V!13269 (_ BitVec 32) Int) ListLongMap!5055)

(assert (=> b!378958 (= lt!176892 (getCurrentListMap!1971 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!176894 () ListLongMap!5055)

(declare-fun lt!176893 () array!22143)

(assert (=> b!378958 (= lt!176894 (getCurrentListMap!1971 lt!176890 lt!176893 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!176887 () ListLongMap!5055)

(declare-fun lt!176896 () ListLongMap!5055)

(assert (=> b!378958 (and (= lt!176887 lt!176896) (= lt!176896 lt!176887))))

(assert (=> b!378958 (= lt!176896 (+!884 lt!176897 lt!176888))))

(assert (=> b!378958 (= lt!176888 (tuple2!6129 k0!778 v!373))))

(declare-fun lt!176898 () Unit!11663)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!122 (array!22145 array!22143 (_ BitVec 32) (_ BitVec 32) V!13269 V!13269 (_ BitVec 32) (_ BitVec 64) V!13269 (_ BitVec 32) Int) Unit!11663)

(assert (=> b!378958 (= lt!176898 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!122 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!789 (array!22145 array!22143 (_ BitVec 32) (_ BitVec 32) V!13269 V!13269 (_ BitVec 32) Int) ListLongMap!5055)

(assert (=> b!378958 (= lt!176887 (getCurrentListMapNoExtraKeys!789 lt!176890 lt!176893 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!378958 (= lt!176893 (array!22144 (store (arr!10537 _values!506) i!548 (ValueCellFull!4218 v!373)) (size!10889 _values!506)))))

(assert (=> b!378958 (= lt!176897 (getCurrentListMapNoExtraKeys!789 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!378959 () Bool)

(declare-fun e!230595 () Bool)

(assert (=> b!378959 (= e!230595 (and e!230590 mapRes!15249))))

(declare-fun condMapEmpty!15249 () Bool)

(declare-fun mapDefault!15249 () ValueCell!4218)

(assert (=> b!378959 (= condMapEmpty!15249 (= (arr!10537 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4218)) mapDefault!15249)))))

(declare-fun b!378957 () Bool)

(assert (=> b!378957 (= e!230592 e!230588)))

(declare-fun res!214867 () Bool)

(assert (=> b!378957 (=> res!214867 e!230588)))

(assert (=> b!378957 (= res!214867 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!378957 (= lt!176892 lt!176891)))

(declare-fun lt!176899 () tuple2!6128)

(assert (=> b!378957 (= lt!176891 (+!884 lt!176897 lt!176899))))

(assert (=> b!378957 (= lt!176894 lt!176889)))

(assert (=> b!378957 (= lt!176889 (+!884 lt!176896 lt!176899))))

(assert (=> b!378957 (= lt!176894 (+!884 lt!176887 lt!176899))))

(assert (=> b!378957 (= lt!176899 (tuple2!6129 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun res!214863 () Bool)

(assert (=> start!37356 (=> (not res!214863) (not e!230589))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37356 (= res!214863 (validMask!0 mask!970))))

(assert (=> start!37356 e!230589))

(declare-fun array_inv!7752 (array!22143) Bool)

(assert (=> start!37356 (and (array_inv!7752 _values!506) e!230595)))

(assert (=> start!37356 tp!30140))

(assert (=> start!37356 true))

(assert (=> start!37356 tp_is_empty!9123))

(declare-fun array_inv!7753 (array!22145) Bool)

(assert (=> start!37356 (array_inv!7753 _keys!658)))

(assert (= (and start!37356 res!214863) b!378945))

(assert (= (and b!378945 res!214873) b!378946))

(assert (= (and b!378946 res!214871) b!378956))

(assert (= (and b!378956 res!214870) b!378953))

(assert (= (and b!378953 res!214874) b!378951))

(assert (= (and b!378951 res!214866) b!378952))

(assert (= (and b!378952 res!214869) b!378947))

(assert (= (and b!378947 res!214872) b!378948))

(assert (= (and b!378948 res!214864) b!378954))

(assert (= (and b!378954 res!214868) b!378958))

(assert (= (and b!378958 (not res!214865)) b!378957))

(assert (= (and b!378957 (not res!214867)) b!378949))

(assert (= (and b!378959 condMapEmpty!15249) mapIsEmpty!15249))

(assert (= (and b!378959 (not condMapEmpty!15249)) mapNonEmpty!15249))

(get-info :version)

(assert (= (and mapNonEmpty!15249 ((_ is ValueCellFull!4218) mapValue!15249)) b!378950))

(assert (= (and b!378959 ((_ is ValueCellFull!4218) mapDefault!15249)) b!378955))

(assert (= start!37356 b!378959))

(declare-fun m!375845 () Bool)

(assert (=> b!378958 m!375845))

(declare-fun m!375847 () Bool)

(assert (=> b!378958 m!375847))

(declare-fun m!375849 () Bool)

(assert (=> b!378958 m!375849))

(declare-fun m!375851 () Bool)

(assert (=> b!378958 m!375851))

(declare-fun m!375853 () Bool)

(assert (=> b!378958 m!375853))

(declare-fun m!375855 () Bool)

(assert (=> b!378958 m!375855))

(declare-fun m!375857 () Bool)

(assert (=> b!378958 m!375857))

(declare-fun m!375859 () Bool)

(assert (=> b!378957 m!375859))

(declare-fun m!375861 () Bool)

(assert (=> b!378957 m!375861))

(declare-fun m!375863 () Bool)

(assert (=> b!378957 m!375863))

(declare-fun m!375865 () Bool)

(assert (=> b!378949 m!375865))

(declare-fun m!375867 () Bool)

(assert (=> b!378949 m!375867))

(declare-fun m!375869 () Bool)

(assert (=> b!378954 m!375869))

(declare-fun m!375871 () Bool)

(assert (=> b!378951 m!375871))

(declare-fun m!375873 () Bool)

(assert (=> b!378952 m!375873))

(declare-fun m!375875 () Bool)

(assert (=> start!37356 m!375875))

(declare-fun m!375877 () Bool)

(assert (=> start!37356 m!375877))

(declare-fun m!375879 () Bool)

(assert (=> start!37356 m!375879))

(declare-fun m!375881 () Bool)

(assert (=> b!378946 m!375881))

(declare-fun m!375883 () Bool)

(assert (=> mapNonEmpty!15249 m!375883))

(declare-fun m!375885 () Bool)

(assert (=> b!378947 m!375885))

(declare-fun m!375887 () Bool)

(assert (=> b!378948 m!375887))

(declare-fun m!375889 () Bool)

(assert (=> b!378948 m!375889))

(declare-fun m!375891 () Bool)

(assert (=> b!378956 m!375891))

(check-sat (not b_next!8475) b_and!15735 (not b!378947) (not b!378951) (not start!37356) (not b!378949) (not b!378954) tp_is_empty!9123 (not b!378946) (not b!378957) (not mapNonEmpty!15249) (not b!378948) (not b!378958) (not b!378956))
(check-sat b_and!15735 (not b_next!8475))
