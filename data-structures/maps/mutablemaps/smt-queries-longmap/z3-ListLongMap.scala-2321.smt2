; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37398 () Bool)

(assert start!37398)

(declare-fun b_free!8517 () Bool)

(declare-fun b_next!8517 () Bool)

(assert (=> start!37398 (= b_free!8517 (not b_next!8517))))

(declare-fun tp!30267 () Bool)

(declare-fun b_and!15777 () Bool)

(assert (=> start!37398 (= tp!30267 b_and!15777)))

(declare-fun res!215621 () Bool)

(declare-fun e!231098 () Bool)

(assert (=> start!37398 (=> (not res!215621) (not e!231098))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37398 (= res!215621 (validMask!0 mask!970))))

(assert (=> start!37398 e!231098))

(declare-datatypes ((V!13325 0))(
  ( (V!13326 (val!4627 Int)) )
))
(declare-datatypes ((ValueCell!4239 0))(
  ( (ValueCellFull!4239 (v!6820 V!13325)) (EmptyCell!4239) )
))
(declare-datatypes ((array!22227 0))(
  ( (array!22228 (arr!10579 (Array (_ BitVec 32) ValueCell!4239)) (size!10931 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22227)

(declare-fun e!231096 () Bool)

(declare-fun array_inv!7782 (array!22227) Bool)

(assert (=> start!37398 (and (array_inv!7782 _values!506) e!231096)))

(assert (=> start!37398 tp!30267))

(assert (=> start!37398 true))

(declare-fun tp_is_empty!9165 () Bool)

(assert (=> start!37398 tp_is_empty!9165))

(declare-datatypes ((array!22229 0))(
  ( (array!22230 (arr!10580 (Array (_ BitVec 32) (_ BitVec 64))) (size!10932 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22229)

(declare-fun array_inv!7783 (array!22229) Bool)

(assert (=> start!37398 (array_inv!7783 _keys!658)))

(declare-fun mapNonEmpty!15312 () Bool)

(declare-fun mapRes!15312 () Bool)

(declare-fun tp!30266 () Bool)

(declare-fun e!231094 () Bool)

(assert (=> mapNonEmpty!15312 (= mapRes!15312 (and tp!30266 e!231094))))

(declare-fun mapRest!15312 () (Array (_ BitVec 32) ValueCell!4239))

(declare-fun mapKey!15312 () (_ BitVec 32))

(declare-fun mapValue!15312 () ValueCell!4239)

(assert (=> mapNonEmpty!15312 (= (arr!10579 _values!506) (store mapRest!15312 mapKey!15312 mapValue!15312))))

(declare-fun b!379890 () Bool)

(declare-fun e!231097 () Bool)

(assert (=> b!379890 (= e!231097 true)))

(declare-datatypes ((tuple2!6164 0))(
  ( (tuple2!6165 (_1!3092 (_ BitVec 64)) (_2!3092 V!13325)) )
))
(declare-datatypes ((List!6035 0))(
  ( (Nil!6032) (Cons!6031 (h!6887 tuple2!6164) (t!11193 List!6035)) )
))
(declare-datatypes ((ListLongMap!5091 0))(
  ( (ListLongMap!5092 (toList!2561 List!6035)) )
))
(declare-fun lt!177715 () ListLongMap!5091)

(declare-fun lt!177711 () ListLongMap!5091)

(declare-fun lt!177712 () tuple2!6164)

(declare-fun +!902 (ListLongMap!5091 tuple2!6164) ListLongMap!5091)

(assert (=> b!379890 (= lt!177715 (+!902 lt!177711 lt!177712))))

(declare-datatypes ((Unit!11699 0))(
  ( (Unit!11700) )
))
(declare-fun lt!177716 () Unit!11699)

(declare-fun v!373 () V!13325)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun lt!177707 () ListLongMap!5091)

(declare-fun minValue!472 () V!13325)

(declare-fun addCommutativeForDiffKeys!313 (ListLongMap!5091 (_ BitVec 64) V!13325 (_ BitVec 64) V!13325) Unit!11699)

(assert (=> b!379890 (= lt!177716 (addCommutativeForDiffKeys!313 lt!177707 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!379891 () Bool)

(declare-fun res!215627 () Bool)

(declare-fun e!231092 () Bool)

(assert (=> b!379891 (=> (not res!215627) (not e!231092))))

(declare-fun lt!177706 () array!22229)

(declare-datatypes ((List!6036 0))(
  ( (Nil!6033) (Cons!6032 (h!6888 (_ BitVec 64)) (t!11194 List!6036)) )
))
(declare-fun arrayNoDuplicates!0 (array!22229 (_ BitVec 32) List!6036) Bool)

(assert (=> b!379891 (= res!215627 (arrayNoDuplicates!0 lt!177706 #b00000000000000000000000000000000 Nil!6033))))

(declare-fun b!379892 () Bool)

(assert (=> b!379892 (= e!231094 tp_is_empty!9165)))

(declare-fun b!379893 () Bool)

(declare-fun res!215624 () Bool)

(assert (=> b!379893 (=> (not res!215624) (not e!231098))))

(declare-fun arrayContainsKey!0 (array!22229 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!379893 (= res!215624 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!379894 () Bool)

(declare-fun e!231099 () Bool)

(assert (=> b!379894 (= e!231092 (not e!231099))))

(declare-fun res!215630 () Bool)

(assert (=> b!379894 (=> res!215630 e!231099)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!379894 (= res!215630 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun zeroValue!472 () V!13325)

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!177708 () ListLongMap!5091)

(declare-fun getCurrentListMap!1986 (array!22229 array!22227 (_ BitVec 32) (_ BitVec 32) V!13325 V!13325 (_ BitVec 32) Int) ListLongMap!5091)

(assert (=> b!379894 (= lt!177708 (getCurrentListMap!1986 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177718 () ListLongMap!5091)

(declare-fun lt!177710 () array!22227)

(assert (=> b!379894 (= lt!177718 (getCurrentListMap!1986 lt!177706 lt!177710 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177714 () ListLongMap!5091)

(declare-fun lt!177709 () ListLongMap!5091)

(assert (=> b!379894 (and (= lt!177714 lt!177709) (= lt!177709 lt!177714))))

(assert (=> b!379894 (= lt!177709 (+!902 lt!177707 lt!177712))))

(assert (=> b!379894 (= lt!177712 (tuple2!6165 k0!778 v!373))))

(declare-fun lt!177713 () Unit!11699)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!137 (array!22229 array!22227 (_ BitVec 32) (_ BitVec 32) V!13325 V!13325 (_ BitVec 32) (_ BitVec 64) V!13325 (_ BitVec 32) Int) Unit!11699)

(assert (=> b!379894 (= lt!177713 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!137 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!804 (array!22229 array!22227 (_ BitVec 32) (_ BitVec 32) V!13325 V!13325 (_ BitVec 32) Int) ListLongMap!5091)

(assert (=> b!379894 (= lt!177714 (getCurrentListMapNoExtraKeys!804 lt!177706 lt!177710 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!379894 (= lt!177710 (array!22228 (store (arr!10579 _values!506) i!548 (ValueCellFull!4239 v!373)) (size!10931 _values!506)))))

(assert (=> b!379894 (= lt!177707 (getCurrentListMapNoExtraKeys!804 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!379895 () Bool)

(assert (=> b!379895 (= e!231099 e!231097)))

(declare-fun res!215629 () Bool)

(assert (=> b!379895 (=> res!215629 e!231097)))

(assert (=> b!379895 (= res!215629 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!379895 (= lt!177708 lt!177711)))

(declare-fun lt!177717 () tuple2!6164)

(assert (=> b!379895 (= lt!177711 (+!902 lt!177707 lt!177717))))

(assert (=> b!379895 (= lt!177718 lt!177715)))

(assert (=> b!379895 (= lt!177715 (+!902 lt!177709 lt!177717))))

(assert (=> b!379895 (= lt!177718 (+!902 lt!177714 lt!177717))))

(assert (=> b!379895 (= lt!177717 (tuple2!6165 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun mapIsEmpty!15312 () Bool)

(assert (=> mapIsEmpty!15312 mapRes!15312))

(declare-fun b!379896 () Bool)

(declare-fun res!215623 () Bool)

(assert (=> b!379896 (=> (not res!215623) (not e!231098))))

(assert (=> b!379896 (= res!215623 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10932 _keys!658))))))

(declare-fun b!379897 () Bool)

(declare-fun e!231095 () Bool)

(assert (=> b!379897 (= e!231096 (and e!231095 mapRes!15312))))

(declare-fun condMapEmpty!15312 () Bool)

(declare-fun mapDefault!15312 () ValueCell!4239)

(assert (=> b!379897 (= condMapEmpty!15312 (= (arr!10579 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4239)) mapDefault!15312)))))

(declare-fun b!379898 () Bool)

(declare-fun res!215626 () Bool)

(assert (=> b!379898 (=> (not res!215626) (not e!231098))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!379898 (= res!215626 (validKeyInArray!0 k0!778))))

(declare-fun b!379899 () Bool)

(declare-fun res!215625 () Bool)

(assert (=> b!379899 (=> (not res!215625) (not e!231098))))

(assert (=> b!379899 (= res!215625 (and (= (size!10931 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10932 _keys!658) (size!10931 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!379900 () Bool)

(declare-fun res!215628 () Bool)

(assert (=> b!379900 (=> (not res!215628) (not e!231098))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22229 (_ BitVec 32)) Bool)

(assert (=> b!379900 (= res!215628 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!379901 () Bool)

(declare-fun res!215619 () Bool)

(assert (=> b!379901 (=> (not res!215619) (not e!231098))))

(assert (=> b!379901 (= res!215619 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6033))))

(declare-fun b!379902 () Bool)

(declare-fun res!215622 () Bool)

(assert (=> b!379902 (=> (not res!215622) (not e!231098))))

(assert (=> b!379902 (= res!215622 (or (= (select (arr!10580 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10580 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!379903 () Bool)

(assert (=> b!379903 (= e!231098 e!231092)))

(declare-fun res!215620 () Bool)

(assert (=> b!379903 (=> (not res!215620) (not e!231092))))

(assert (=> b!379903 (= res!215620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!177706 mask!970))))

(assert (=> b!379903 (= lt!177706 (array!22230 (store (arr!10580 _keys!658) i!548 k0!778) (size!10932 _keys!658)))))

(declare-fun b!379904 () Bool)

(assert (=> b!379904 (= e!231095 tp_is_empty!9165)))

(assert (= (and start!37398 res!215621) b!379899))

(assert (= (and b!379899 res!215625) b!379900))

(assert (= (and b!379900 res!215628) b!379901))

(assert (= (and b!379901 res!215619) b!379896))

(assert (= (and b!379896 res!215623) b!379898))

(assert (= (and b!379898 res!215626) b!379902))

(assert (= (and b!379902 res!215622) b!379893))

(assert (= (and b!379893 res!215624) b!379903))

(assert (= (and b!379903 res!215620) b!379891))

(assert (= (and b!379891 res!215627) b!379894))

(assert (= (and b!379894 (not res!215630)) b!379895))

(assert (= (and b!379895 (not res!215629)) b!379890))

(assert (= (and b!379897 condMapEmpty!15312) mapIsEmpty!15312))

(assert (= (and b!379897 (not condMapEmpty!15312)) mapNonEmpty!15312))

(get-info :version)

(assert (= (and mapNonEmpty!15312 ((_ is ValueCellFull!4239) mapValue!15312)) b!379892))

(assert (= (and b!379897 ((_ is ValueCellFull!4239) mapDefault!15312)) b!379904))

(assert (= start!37398 b!379897))

(declare-fun m!376853 () Bool)

(assert (=> b!379898 m!376853))

(declare-fun m!376855 () Bool)

(assert (=> b!379902 m!376855))

(declare-fun m!376857 () Bool)

(assert (=> start!37398 m!376857))

(declare-fun m!376859 () Bool)

(assert (=> start!37398 m!376859))

(declare-fun m!376861 () Bool)

(assert (=> start!37398 m!376861))

(declare-fun m!376863 () Bool)

(assert (=> b!379903 m!376863))

(declare-fun m!376865 () Bool)

(assert (=> b!379903 m!376865))

(declare-fun m!376867 () Bool)

(assert (=> b!379900 m!376867))

(declare-fun m!376869 () Bool)

(assert (=> b!379895 m!376869))

(declare-fun m!376871 () Bool)

(assert (=> b!379895 m!376871))

(declare-fun m!376873 () Bool)

(assert (=> b!379895 m!376873))

(declare-fun m!376875 () Bool)

(assert (=> mapNonEmpty!15312 m!376875))

(declare-fun m!376877 () Bool)

(assert (=> b!379893 m!376877))

(declare-fun m!376879 () Bool)

(assert (=> b!379901 m!376879))

(declare-fun m!376881 () Bool)

(assert (=> b!379890 m!376881))

(declare-fun m!376883 () Bool)

(assert (=> b!379890 m!376883))

(declare-fun m!376885 () Bool)

(assert (=> b!379891 m!376885))

(declare-fun m!376887 () Bool)

(assert (=> b!379894 m!376887))

(declare-fun m!376889 () Bool)

(assert (=> b!379894 m!376889))

(declare-fun m!376891 () Bool)

(assert (=> b!379894 m!376891))

(declare-fun m!376893 () Bool)

(assert (=> b!379894 m!376893))

(declare-fun m!376895 () Bool)

(assert (=> b!379894 m!376895))

(declare-fun m!376897 () Bool)

(assert (=> b!379894 m!376897))

(declare-fun m!376899 () Bool)

(assert (=> b!379894 m!376899))

(check-sat (not b!379891) (not b!379900) (not b!379901) (not b!379894) (not b!379903) (not b!379895) b_and!15777 (not mapNonEmpty!15312) (not b_next!8517) (not b!379898) (not b!379893) (not b!379890) (not start!37398) tp_is_empty!9165)
(check-sat b_and!15777 (not b_next!8517))
