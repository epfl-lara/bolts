; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37302 () Bool)

(assert start!37302)

(declare-fun b_free!8421 () Bool)

(declare-fun b_next!8421 () Bool)

(assert (=> start!37302 (= b_free!8421 (not b_next!8421))))

(declare-fun tp!29978 () Bool)

(declare-fun b_and!15681 () Bool)

(assert (=> start!37302 (= tp!29978 b_and!15681)))

(declare-fun b!377721 () Bool)

(declare-fun e!229942 () Bool)

(declare-fun e!229944 () Bool)

(assert (=> b!377721 (= e!229942 e!229944)))

(declare-fun res!213888 () Bool)

(assert (=> b!377721 (=> (not res!213888) (not e!229944))))

(declare-datatypes ((array!22037 0))(
  ( (array!22038 (arr!10484 (Array (_ BitVec 32) (_ BitVec 64))) (size!10836 (_ BitVec 32))) )
))
(declare-fun lt!175879 () array!22037)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22037 (_ BitVec 32)) Bool)

(assert (=> b!377721 (= res!213888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!175879 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!22037)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!377721 (= lt!175879 (array!22038 (store (arr!10484 _keys!658) i!548 k0!778) (size!10836 _keys!658)))))

(declare-fun b!377722 () Bool)

(declare-fun res!213893 () Bool)

(assert (=> b!377722 (=> (not res!213893) (not e!229942))))

(assert (=> b!377722 (= res!213893 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10836 _keys!658))))))

(declare-fun b!377723 () Bool)

(declare-fun e!229940 () Bool)

(declare-fun tp_is_empty!9069 () Bool)

(assert (=> b!377723 (= e!229940 tp_is_empty!9069)))

(declare-fun b!377724 () Bool)

(declare-fun res!213891 () Bool)

(assert (=> b!377724 (=> (not res!213891) (not e!229942))))

(declare-datatypes ((List!5953 0))(
  ( (Nil!5950) (Cons!5949 (h!6805 (_ BitVec 64)) (t!11111 List!5953)) )
))
(declare-fun arrayNoDuplicates!0 (array!22037 (_ BitVec 32) List!5953) Bool)

(assert (=> b!377724 (= res!213891 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5950))))

(declare-fun b!377725 () Bool)

(declare-fun res!213889 () Bool)

(assert (=> b!377725 (=> (not res!213889) (not e!229942))))

(declare-fun arrayContainsKey!0 (array!22037 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!377725 (= res!213889 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!15168 () Bool)

(declare-fun mapRes!15168 () Bool)

(declare-fun tp!29979 () Bool)

(declare-fun e!229947 () Bool)

(assert (=> mapNonEmpty!15168 (= mapRes!15168 (and tp!29979 e!229947))))

(declare-datatypes ((V!13197 0))(
  ( (V!13198 (val!4579 Int)) )
))
(declare-datatypes ((ValueCell!4191 0))(
  ( (ValueCellFull!4191 (v!6772 V!13197)) (EmptyCell!4191) )
))
(declare-fun mapValue!15168 () ValueCell!4191)

(declare-datatypes ((array!22039 0))(
  ( (array!22040 (arr!10485 (Array (_ BitVec 32) ValueCell!4191)) (size!10837 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22039)

(declare-fun mapRest!15168 () (Array (_ BitVec 32) ValueCell!4191))

(declare-fun mapKey!15168 () (_ BitVec 32))

(assert (=> mapNonEmpty!15168 (= (arr!10485 _values!506) (store mapRest!15168 mapKey!15168 mapValue!15168))))

(declare-fun b!377727 () Bool)

(declare-fun e!229943 () Bool)

(assert (=> b!377727 (= e!229943 true)))

(declare-datatypes ((tuple2!6082 0))(
  ( (tuple2!6083 (_1!3051 (_ BitVec 64)) (_2!3051 V!13197)) )
))
(declare-datatypes ((List!5954 0))(
  ( (Nil!5951) (Cons!5950 (h!6806 tuple2!6082) (t!11112 List!5954)) )
))
(declare-datatypes ((ListLongMap!5009 0))(
  ( (ListLongMap!5010 (toList!2520 List!5954)) )
))
(declare-fun lt!175881 () ListLongMap!5009)

(declare-fun lt!175880 () ListLongMap!5009)

(declare-fun lt!175878 () tuple2!6082)

(declare-fun +!861 (ListLongMap!5009 tuple2!6082) ListLongMap!5009)

(assert (=> b!377727 (= lt!175881 (+!861 lt!175880 lt!175878))))

(declare-datatypes ((Unit!11621 0))(
  ( (Unit!11622) )
))
(declare-fun lt!175882 () Unit!11621)

(declare-fun v!373 () V!13197)

(declare-fun zeroValue!472 () V!13197)

(declare-fun lt!175873 () ListLongMap!5009)

(declare-fun addCommutativeForDiffKeys!280 (ListLongMap!5009 (_ BitVec 64) V!13197 (_ BitVec 64) V!13197) Unit!11621)

(assert (=> b!377727 (= lt!175882 (addCommutativeForDiffKeys!280 lt!175873 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!377728 () Bool)

(declare-fun res!213886 () Bool)

(assert (=> b!377728 (=> (not res!213886) (not e!229944))))

(assert (=> b!377728 (= res!213886 (arrayNoDuplicates!0 lt!175879 #b00000000000000000000000000000000 Nil!5950))))

(declare-fun b!377729 () Bool)

(declare-fun res!213890 () Bool)

(assert (=> b!377729 (=> (not res!213890) (not e!229942))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!377729 (= res!213890 (validKeyInArray!0 k0!778))))

(declare-fun b!377730 () Bool)

(assert (=> b!377730 (= e!229947 tp_is_empty!9069)))

(declare-fun mapIsEmpty!15168 () Bool)

(assert (=> mapIsEmpty!15168 mapRes!15168))

(declare-fun b!377731 () Bool)

(declare-fun e!229946 () Bool)

(assert (=> b!377731 (= e!229946 e!229943)))

(declare-fun res!213892 () Bool)

(assert (=> b!377731 (=> res!213892 e!229943)))

(assert (=> b!377731 (= res!213892 (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!175874 () ListLongMap!5009)

(assert (=> b!377731 (= lt!175874 lt!175881)))

(declare-fun lt!175871 () ListLongMap!5009)

(declare-fun lt!175872 () tuple2!6082)

(assert (=> b!377731 (= lt!175881 (+!861 lt!175871 lt!175872))))

(declare-fun lt!175875 () ListLongMap!5009)

(assert (=> b!377731 (= lt!175875 lt!175880)))

(assert (=> b!377731 (= lt!175880 (+!861 lt!175873 lt!175872))))

(declare-fun lt!175877 () ListLongMap!5009)

(assert (=> b!377731 (= lt!175874 (+!861 lt!175877 lt!175872))))

(assert (=> b!377731 (= lt!175872 (tuple2!6083 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!377732 () Bool)

(declare-fun res!213887 () Bool)

(assert (=> b!377732 (=> (not res!213887) (not e!229942))))

(assert (=> b!377732 (= res!213887 (or (= (select (arr!10484 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10484 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!377726 () Bool)

(declare-fun e!229941 () Bool)

(assert (=> b!377726 (= e!229941 (and e!229940 mapRes!15168))))

(declare-fun condMapEmpty!15168 () Bool)

(declare-fun mapDefault!15168 () ValueCell!4191)

(assert (=> b!377726 (= condMapEmpty!15168 (= (arr!10485 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4191)) mapDefault!15168)))))

(declare-fun res!213884 () Bool)

(assert (=> start!37302 (=> (not res!213884) (not e!229942))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37302 (= res!213884 (validMask!0 mask!970))))

(assert (=> start!37302 e!229942))

(declare-fun array_inv!7716 (array!22039) Bool)

(assert (=> start!37302 (and (array_inv!7716 _values!506) e!229941)))

(assert (=> start!37302 tp!29978))

(assert (=> start!37302 true))

(assert (=> start!37302 tp_is_empty!9069))

(declare-fun array_inv!7717 (array!22037) Bool)

(assert (=> start!37302 (array_inv!7717 _keys!658)))

(declare-fun b!377733 () Bool)

(declare-fun res!213883 () Bool)

(assert (=> b!377733 (=> (not res!213883) (not e!229942))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!377733 (= res!213883 (and (= (size!10837 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10836 _keys!658) (size!10837 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!377734 () Bool)

(assert (=> b!377734 (= e!229944 (not e!229946))))

(declare-fun res!213885 () Bool)

(assert (=> b!377734 (=> res!213885 e!229946)))

(assert (=> b!377734 (= res!213885 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun minValue!472 () V!13197)

(declare-fun getCurrentListMap!1955 (array!22037 array!22039 (_ BitVec 32) (_ BitVec 32) V!13197 V!13197 (_ BitVec 32) Int) ListLongMap!5009)

(assert (=> b!377734 (= lt!175875 (getCurrentListMap!1955 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175876 () array!22039)

(assert (=> b!377734 (= lt!175874 (getCurrentListMap!1955 lt!175879 lt!175876 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!377734 (and (= lt!175877 lt!175871) (= lt!175871 lt!175877))))

(assert (=> b!377734 (= lt!175871 (+!861 lt!175873 lt!175878))))

(assert (=> b!377734 (= lt!175878 (tuple2!6083 k0!778 v!373))))

(declare-fun lt!175870 () Unit!11621)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!106 (array!22037 array!22039 (_ BitVec 32) (_ BitVec 32) V!13197 V!13197 (_ BitVec 32) (_ BitVec 64) V!13197 (_ BitVec 32) Int) Unit!11621)

(assert (=> b!377734 (= lt!175870 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!106 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!773 (array!22037 array!22039 (_ BitVec 32) (_ BitVec 32) V!13197 V!13197 (_ BitVec 32) Int) ListLongMap!5009)

(assert (=> b!377734 (= lt!175877 (getCurrentListMapNoExtraKeys!773 lt!175879 lt!175876 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!377734 (= lt!175876 (array!22040 (store (arr!10485 _values!506) i!548 (ValueCellFull!4191 v!373)) (size!10837 _values!506)))))

(assert (=> b!377734 (= lt!175873 (getCurrentListMapNoExtraKeys!773 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!377735 () Bool)

(declare-fun res!213882 () Bool)

(assert (=> b!377735 (=> (not res!213882) (not e!229942))))

(assert (=> b!377735 (= res!213882 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(assert (= (and start!37302 res!213884) b!377733))

(assert (= (and b!377733 res!213883) b!377735))

(assert (= (and b!377735 res!213882) b!377724))

(assert (= (and b!377724 res!213891) b!377722))

(assert (= (and b!377722 res!213893) b!377729))

(assert (= (and b!377729 res!213890) b!377732))

(assert (= (and b!377732 res!213887) b!377725))

(assert (= (and b!377725 res!213889) b!377721))

(assert (= (and b!377721 res!213888) b!377728))

(assert (= (and b!377728 res!213886) b!377734))

(assert (= (and b!377734 (not res!213885)) b!377731))

(assert (= (and b!377731 (not res!213892)) b!377727))

(assert (= (and b!377726 condMapEmpty!15168) mapIsEmpty!15168))

(assert (= (and b!377726 (not condMapEmpty!15168)) mapNonEmpty!15168))

(get-info :version)

(assert (= (and mapNonEmpty!15168 ((_ is ValueCellFull!4191) mapValue!15168)) b!377730))

(assert (= (and b!377726 ((_ is ValueCellFull!4191) mapDefault!15168)) b!377723))

(assert (= start!37302 b!377726))

(declare-fun m!374561 () Bool)

(assert (=> b!377721 m!374561))

(declare-fun m!374563 () Bool)

(assert (=> b!377721 m!374563))

(declare-fun m!374565 () Bool)

(assert (=> mapNonEmpty!15168 m!374565))

(declare-fun m!374567 () Bool)

(assert (=> b!377731 m!374567))

(declare-fun m!374569 () Bool)

(assert (=> b!377731 m!374569))

(declare-fun m!374571 () Bool)

(assert (=> b!377731 m!374571))

(declare-fun m!374573 () Bool)

(assert (=> b!377725 m!374573))

(declare-fun m!374575 () Bool)

(assert (=> b!377724 m!374575))

(declare-fun m!374577 () Bool)

(assert (=> b!377735 m!374577))

(declare-fun m!374579 () Bool)

(assert (=> b!377734 m!374579))

(declare-fun m!374581 () Bool)

(assert (=> b!377734 m!374581))

(declare-fun m!374583 () Bool)

(assert (=> b!377734 m!374583))

(declare-fun m!374585 () Bool)

(assert (=> b!377734 m!374585))

(declare-fun m!374587 () Bool)

(assert (=> b!377734 m!374587))

(declare-fun m!374589 () Bool)

(assert (=> b!377734 m!374589))

(declare-fun m!374591 () Bool)

(assert (=> b!377734 m!374591))

(declare-fun m!374593 () Bool)

(assert (=> b!377732 m!374593))

(declare-fun m!374595 () Bool)

(assert (=> start!37302 m!374595))

(declare-fun m!374597 () Bool)

(assert (=> start!37302 m!374597))

(declare-fun m!374599 () Bool)

(assert (=> start!37302 m!374599))

(declare-fun m!374601 () Bool)

(assert (=> b!377727 m!374601))

(declare-fun m!374603 () Bool)

(assert (=> b!377727 m!374603))

(declare-fun m!374605 () Bool)

(assert (=> b!377729 m!374605))

(declare-fun m!374607 () Bool)

(assert (=> b!377728 m!374607))

(check-sat tp_is_empty!9069 (not mapNonEmpty!15168) (not b!377721) (not b!377731) (not b!377734) (not b!377725) (not start!37302) (not b!377729) (not b!377728) (not b!377724) b_and!15681 (not b!377727) (not b_next!8421) (not b!377735))
(check-sat b_and!15681 (not b_next!8421))
