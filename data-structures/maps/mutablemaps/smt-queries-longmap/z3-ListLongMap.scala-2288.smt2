; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37200 () Bool)

(assert start!37200)

(declare-fun b_free!8319 () Bool)

(declare-fun b_next!8319 () Bool)

(assert (=> start!37200 (= b_free!8319 (not b_next!8319))))

(declare-fun tp!29672 () Bool)

(declare-fun b_and!15579 () Bool)

(assert (=> start!37200 (= tp!29672 b_and!15579)))

(declare-fun b!375417 () Bool)

(declare-fun e!228719 () Bool)

(declare-fun tp_is_empty!8967 () Bool)

(assert (=> b!375417 (= e!228719 tp_is_empty!8967)))

(declare-fun b!375418 () Bool)

(declare-fun res!212040 () Bool)

(declare-fun e!228718 () Bool)

(assert (=> b!375418 (=> (not res!212040) (not e!228718))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!375418 (= res!212040 (validKeyInArray!0 k0!778))))

(declare-fun b!375419 () Bool)

(declare-fun res!212039 () Bool)

(assert (=> b!375419 (=> (not res!212039) (not e!228718))))

(declare-datatypes ((array!21833 0))(
  ( (array!21834 (arr!10382 (Array (_ BitVec 32) (_ BitVec 64))) (size!10734 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21833)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!375419 (= res!212039 (or (= (select (arr!10382 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10382 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!375420 () Bool)

(declare-fun res!212048 () Bool)

(assert (=> b!375420 (=> (not res!212048) (not e!228718))))

(assert (=> b!375420 (= res!212048 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10734 _keys!658))))))

(declare-fun b!375421 () Bool)

(declare-fun res!212038 () Bool)

(assert (=> b!375421 (=> (not res!212038) (not e!228718))))

(declare-fun arrayContainsKey!0 (array!21833 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!375421 (= res!212038 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!375422 () Bool)

(declare-fun res!212041 () Bool)

(assert (=> b!375422 (=> (not res!212041) (not e!228718))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21833 (_ BitVec 32)) Bool)

(assert (=> b!375422 (= res!212041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!375423 () Bool)

(declare-fun e!228721 () Bool)

(declare-fun e!228723 () Bool)

(assert (=> b!375423 (= e!228721 (not e!228723))))

(declare-fun res!212043 () Bool)

(assert (=> b!375423 (=> res!212043 e!228723)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!375423 (= res!212043 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!13061 0))(
  ( (V!13062 (val!4528 Int)) )
))
(declare-datatypes ((ValueCell!4140 0))(
  ( (ValueCellFull!4140 (v!6721 V!13061)) (EmptyCell!4140) )
))
(declare-datatypes ((array!21835 0))(
  ( (array!21836 (arr!10383 (Array (_ BitVec 32) ValueCell!4140)) (size!10735 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21835)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13061)

(declare-fun minValue!472 () V!13061)

(declare-datatypes ((tuple2!6000 0))(
  ( (tuple2!6001 (_1!3010 (_ BitVec 64)) (_2!3010 V!13061)) )
))
(declare-datatypes ((List!5871 0))(
  ( (Nil!5868) (Cons!5867 (h!6723 tuple2!6000) (t!11029 List!5871)) )
))
(declare-datatypes ((ListLongMap!4927 0))(
  ( (ListLongMap!4928 (toList!2479 List!5871)) )
))
(declare-fun lt!173901 () ListLongMap!4927)

(declare-fun getCurrentListMap!1921 (array!21833 array!21835 (_ BitVec 32) (_ BitVec 32) V!13061 V!13061 (_ BitVec 32) Int) ListLongMap!4927)

(assert (=> b!375423 (= lt!173901 (getCurrentListMap!1921 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!173905 () array!21833)

(declare-fun lt!173906 () array!21835)

(declare-fun lt!173917 () ListLongMap!4927)

(assert (=> b!375423 (= lt!173917 (getCurrentListMap!1921 lt!173905 lt!173906 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!173902 () ListLongMap!4927)

(declare-fun lt!173911 () ListLongMap!4927)

(assert (=> b!375423 (and (= lt!173902 lt!173911) (= lt!173911 lt!173902))))

(declare-fun lt!173916 () ListLongMap!4927)

(declare-fun lt!173910 () tuple2!6000)

(declare-fun +!820 (ListLongMap!4927 tuple2!6000) ListLongMap!4927)

(assert (=> b!375423 (= lt!173911 (+!820 lt!173916 lt!173910))))

(declare-fun v!373 () V!13061)

(assert (=> b!375423 (= lt!173910 (tuple2!6001 k0!778 v!373))))

(declare-datatypes ((Unit!11543 0))(
  ( (Unit!11544) )
))
(declare-fun lt!173903 () Unit!11543)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!72 (array!21833 array!21835 (_ BitVec 32) (_ BitVec 32) V!13061 V!13061 (_ BitVec 32) (_ BitVec 64) V!13061 (_ BitVec 32) Int) Unit!11543)

(assert (=> b!375423 (= lt!173903 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!72 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!739 (array!21833 array!21835 (_ BitVec 32) (_ BitVec 32) V!13061 V!13061 (_ BitVec 32) Int) ListLongMap!4927)

(assert (=> b!375423 (= lt!173902 (getCurrentListMapNoExtraKeys!739 lt!173905 lt!173906 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!375423 (= lt!173906 (array!21836 (store (arr!10383 _values!506) i!548 (ValueCellFull!4140 v!373)) (size!10735 _values!506)))))

(assert (=> b!375423 (= lt!173916 (getCurrentListMapNoExtraKeys!739 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!375424 () Bool)

(declare-fun e!228717 () Bool)

(assert (=> b!375424 (= e!228723 e!228717)))

(declare-fun res!212037 () Bool)

(assert (=> b!375424 (=> res!212037 e!228717)))

(assert (=> b!375424 (= res!212037 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!173909 () ListLongMap!4927)

(declare-fun lt!173913 () ListLongMap!4927)

(assert (=> b!375424 (= lt!173909 lt!173913)))

(declare-fun lt!173914 () ListLongMap!4927)

(assert (=> b!375424 (= lt!173913 (+!820 lt!173914 lt!173910))))

(declare-fun lt!173908 () Unit!11543)

(declare-fun addCommutativeForDiffKeys!248 (ListLongMap!4927 (_ BitVec 64) V!13061 (_ BitVec 64) V!13061) Unit!11543)

(assert (=> b!375424 (= lt!173908 (addCommutativeForDiffKeys!248 lt!173916 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!173904 () tuple2!6000)

(assert (=> b!375424 (= lt!173917 (+!820 lt!173909 lt!173904))))

(declare-fun lt!173907 () tuple2!6000)

(assert (=> b!375424 (= lt!173909 (+!820 lt!173911 lt!173907))))

(declare-fun lt!173915 () ListLongMap!4927)

(assert (=> b!375424 (= lt!173901 lt!173915)))

(assert (=> b!375424 (= lt!173915 (+!820 lt!173914 lt!173904))))

(assert (=> b!375424 (= lt!173914 (+!820 lt!173916 lt!173907))))

(assert (=> b!375424 (= lt!173917 (+!820 (+!820 lt!173902 lt!173907) lt!173904))))

(assert (=> b!375424 (= lt!173904 (tuple2!6001 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!375424 (= lt!173907 (tuple2!6001 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!375425 () Bool)

(declare-fun e!228720 () Bool)

(assert (=> b!375425 (= e!228720 tp_is_empty!8967)))

(declare-fun b!375427 () Bool)

(declare-fun e!228716 () Bool)

(declare-fun mapRes!15015 () Bool)

(assert (=> b!375427 (= e!228716 (and e!228719 mapRes!15015))))

(declare-fun condMapEmpty!15015 () Bool)

(declare-fun mapDefault!15015 () ValueCell!4140)

(assert (=> b!375427 (= condMapEmpty!15015 (= (arr!10383 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4140)) mapDefault!15015)))))

(declare-fun b!375428 () Bool)

(assert (=> b!375428 (= e!228718 e!228721)))

(declare-fun res!212042 () Bool)

(assert (=> b!375428 (=> (not res!212042) (not e!228721))))

(assert (=> b!375428 (= res!212042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!173905 mask!970))))

(assert (=> b!375428 (= lt!173905 (array!21834 (store (arr!10382 _keys!658) i!548 k0!778) (size!10734 _keys!658)))))

(declare-fun mapIsEmpty!15015 () Bool)

(assert (=> mapIsEmpty!15015 mapRes!15015))

(declare-fun b!375426 () Bool)

(declare-fun res!212044 () Bool)

(assert (=> b!375426 (=> (not res!212044) (not e!228718))))

(assert (=> b!375426 (= res!212044 (and (= (size!10735 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10734 _keys!658) (size!10735 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun res!212046 () Bool)

(assert (=> start!37200 (=> (not res!212046) (not e!228718))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37200 (= res!212046 (validMask!0 mask!970))))

(assert (=> start!37200 e!228718))

(declare-fun array_inv!7648 (array!21835) Bool)

(assert (=> start!37200 (and (array_inv!7648 _values!506) e!228716)))

(assert (=> start!37200 tp!29672))

(assert (=> start!37200 true))

(assert (=> start!37200 tp_is_empty!8967))

(declare-fun array_inv!7649 (array!21833) Bool)

(assert (=> start!37200 (array_inv!7649 _keys!658)))

(declare-fun b!375429 () Bool)

(assert (=> b!375429 (= e!228717 (bvsle #b00000000000000000000000000000000 (size!10734 _keys!658)))))

(assert (=> b!375429 (= (+!820 lt!173913 lt!173904) (+!820 lt!173915 lt!173910))))

(declare-fun lt!173912 () Unit!11543)

(assert (=> b!375429 (= lt!173912 (addCommutativeForDiffKeys!248 lt!173914 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun mapNonEmpty!15015 () Bool)

(declare-fun tp!29673 () Bool)

(assert (=> mapNonEmpty!15015 (= mapRes!15015 (and tp!29673 e!228720))))

(declare-fun mapValue!15015 () ValueCell!4140)

(declare-fun mapKey!15015 () (_ BitVec 32))

(declare-fun mapRest!15015 () (Array (_ BitVec 32) ValueCell!4140))

(assert (=> mapNonEmpty!15015 (= (arr!10383 _values!506) (store mapRest!15015 mapKey!15015 mapValue!15015))))

(declare-fun b!375430 () Bool)

(declare-fun res!212045 () Bool)

(assert (=> b!375430 (=> (not res!212045) (not e!228721))))

(declare-datatypes ((List!5872 0))(
  ( (Nil!5869) (Cons!5868 (h!6724 (_ BitVec 64)) (t!11030 List!5872)) )
))
(declare-fun arrayNoDuplicates!0 (array!21833 (_ BitVec 32) List!5872) Bool)

(assert (=> b!375430 (= res!212045 (arrayNoDuplicates!0 lt!173905 #b00000000000000000000000000000000 Nil!5869))))

(declare-fun b!375431 () Bool)

(declare-fun res!212047 () Bool)

(assert (=> b!375431 (=> (not res!212047) (not e!228718))))

(assert (=> b!375431 (= res!212047 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5869))))

(assert (= (and start!37200 res!212046) b!375426))

(assert (= (and b!375426 res!212044) b!375422))

(assert (= (and b!375422 res!212041) b!375431))

(assert (= (and b!375431 res!212047) b!375420))

(assert (= (and b!375420 res!212048) b!375418))

(assert (= (and b!375418 res!212040) b!375419))

(assert (= (and b!375419 res!212039) b!375421))

(assert (= (and b!375421 res!212038) b!375428))

(assert (= (and b!375428 res!212042) b!375430))

(assert (= (and b!375430 res!212045) b!375423))

(assert (= (and b!375423 (not res!212043)) b!375424))

(assert (= (and b!375424 (not res!212037)) b!375429))

(assert (= (and b!375427 condMapEmpty!15015) mapIsEmpty!15015))

(assert (= (and b!375427 (not condMapEmpty!15015)) mapNonEmpty!15015))

(get-info :version)

(assert (= (and mapNonEmpty!15015 ((_ is ValueCellFull!4140) mapValue!15015)) b!375425))

(assert (= (and b!375427 ((_ is ValueCellFull!4140) mapDefault!15015)) b!375417))

(assert (= start!37200 b!375427))

(declare-fun m!372101 () Bool)

(assert (=> b!375422 m!372101))

(declare-fun m!372103 () Bool)

(assert (=> b!375421 m!372103))

(declare-fun m!372105 () Bool)

(assert (=> b!375430 m!372105))

(declare-fun m!372107 () Bool)

(assert (=> b!375424 m!372107))

(declare-fun m!372109 () Bool)

(assert (=> b!375424 m!372109))

(declare-fun m!372111 () Bool)

(assert (=> b!375424 m!372111))

(declare-fun m!372113 () Bool)

(assert (=> b!375424 m!372113))

(declare-fun m!372115 () Bool)

(assert (=> b!375424 m!372115))

(declare-fun m!372117 () Bool)

(assert (=> b!375424 m!372117))

(declare-fun m!372119 () Bool)

(assert (=> b!375424 m!372119))

(assert (=> b!375424 m!372113))

(declare-fun m!372121 () Bool)

(assert (=> b!375424 m!372121))

(declare-fun m!372123 () Bool)

(assert (=> b!375419 m!372123))

(declare-fun m!372125 () Bool)

(assert (=> start!37200 m!372125))

(declare-fun m!372127 () Bool)

(assert (=> start!37200 m!372127))

(declare-fun m!372129 () Bool)

(assert (=> start!37200 m!372129))

(declare-fun m!372131 () Bool)

(assert (=> b!375418 m!372131))

(declare-fun m!372133 () Bool)

(assert (=> b!375429 m!372133))

(declare-fun m!372135 () Bool)

(assert (=> b!375429 m!372135))

(declare-fun m!372137 () Bool)

(assert (=> b!375429 m!372137))

(declare-fun m!372139 () Bool)

(assert (=> b!375431 m!372139))

(declare-fun m!372141 () Bool)

(assert (=> b!375428 m!372141))

(declare-fun m!372143 () Bool)

(assert (=> b!375428 m!372143))

(declare-fun m!372145 () Bool)

(assert (=> b!375423 m!372145))

(declare-fun m!372147 () Bool)

(assert (=> b!375423 m!372147))

(declare-fun m!372149 () Bool)

(assert (=> b!375423 m!372149))

(declare-fun m!372151 () Bool)

(assert (=> b!375423 m!372151))

(declare-fun m!372153 () Bool)

(assert (=> b!375423 m!372153))

(declare-fun m!372155 () Bool)

(assert (=> b!375423 m!372155))

(declare-fun m!372157 () Bool)

(assert (=> b!375423 m!372157))

(declare-fun m!372159 () Bool)

(assert (=> mapNonEmpty!15015 m!372159))

(check-sat (not b!375431) b_and!15579 (not b!375429) (not b!375428) (not b!375423) (not start!37200) (not b!375421) (not b!375422) tp_is_empty!8967 (not mapNonEmpty!15015) (not b!375424) (not b!375418) (not b!375430) (not b_next!8319))
(check-sat b_and!15579 (not b_next!8319))
