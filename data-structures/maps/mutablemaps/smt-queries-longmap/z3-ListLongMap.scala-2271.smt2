; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37098 () Bool)

(assert start!37098)

(declare-fun b_free!8217 () Bool)

(declare-fun b_next!8217 () Bool)

(assert (=> start!37098 (= b_free!8217 (not b_next!8217))))

(declare-fun tp!29367 () Bool)

(declare-fun b_and!15477 () Bool)

(assert (=> start!37098 (= tp!29367 b_and!15477)))

(declare-fun b!373122 () Bool)

(declare-fun res!210210 () Bool)

(declare-fun e!227497 () Bool)

(assert (=> b!373122 (=> (not res!210210) (not e!227497))))

(declare-datatypes ((array!21637 0))(
  ( (array!21638 (arr!10284 (Array (_ BitVec 32) (_ BitVec 64))) (size!10636 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21637)

(declare-datatypes ((List!5794 0))(
  ( (Nil!5791) (Cons!5790 (h!6646 (_ BitVec 64)) (t!10952 List!5794)) )
))
(declare-fun arrayNoDuplicates!0 (array!21637 (_ BitVec 32) List!5794) Bool)

(assert (=> b!373122 (= res!210210 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5791))))

(declare-fun res!210211 () Bool)

(assert (=> start!37098 (=> (not res!210211) (not e!227497))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37098 (= res!210211 (validMask!0 mask!970))))

(assert (=> start!37098 e!227497))

(declare-datatypes ((V!12925 0))(
  ( (V!12926 (val!4477 Int)) )
))
(declare-datatypes ((ValueCell!4089 0))(
  ( (ValueCellFull!4089 (v!6670 V!12925)) (EmptyCell!4089) )
))
(declare-datatypes ((array!21639 0))(
  ( (array!21640 (arr!10285 (Array (_ BitVec 32) ValueCell!4089)) (size!10637 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21639)

(declare-fun e!227494 () Bool)

(declare-fun array_inv!7592 (array!21639) Bool)

(assert (=> start!37098 (and (array_inv!7592 _values!506) e!227494)))

(assert (=> start!37098 tp!29367))

(assert (=> start!37098 true))

(declare-fun tp_is_empty!8865 () Bool)

(assert (=> start!37098 tp_is_empty!8865))

(declare-fun array_inv!7593 (array!21637) Bool)

(assert (=> start!37098 (array_inv!7593 _keys!658)))

(declare-fun b!373123 () Bool)

(declare-fun e!227498 () Bool)

(assert (=> b!373123 (= e!227497 e!227498)))

(declare-fun res!210207 () Bool)

(assert (=> b!373123 (=> (not res!210207) (not e!227498))))

(declare-fun lt!171305 () array!21637)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21637 (_ BitVec 32)) Bool)

(assert (=> b!373123 (= res!210207 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!171305 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!373123 (= lt!171305 (array!21638 (store (arr!10284 _keys!658) i!548 k0!778) (size!10636 _keys!658)))))

(declare-fun b!373124 () Bool)

(declare-fun e!227496 () Bool)

(declare-fun e!227495 () Bool)

(assert (=> b!373124 (= e!227496 e!227495)))

(declare-fun res!210204 () Bool)

(assert (=> b!373124 (=> res!210204 e!227495)))

(assert (=> b!373124 (= res!210204 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!5918 0))(
  ( (tuple2!5919 (_1!2969 (_ BitVec 64)) (_2!2969 V!12925)) )
))
(declare-datatypes ((List!5795 0))(
  ( (Nil!5792) (Cons!5791 (h!6647 tuple2!5918) (t!10953 List!5795)) )
))
(declare-datatypes ((ListLongMap!4845 0))(
  ( (ListLongMap!4846 (toList!2438 List!5795)) )
))
(declare-fun lt!171315 () ListLongMap!4845)

(declare-fun lt!171309 () ListLongMap!4845)

(assert (=> b!373124 (= lt!171315 lt!171309)))

(declare-fun lt!171312 () ListLongMap!4845)

(declare-fun lt!171314 () tuple2!5918)

(declare-fun +!779 (ListLongMap!4845 tuple2!5918) ListLongMap!4845)

(assert (=> b!373124 (= lt!171309 (+!779 lt!171312 lt!171314))))

(declare-fun v!373 () V!12925)

(declare-fun lt!171306 () ListLongMap!4845)

(declare-datatypes ((Unit!11461 0))(
  ( (Unit!11462) )
))
(declare-fun lt!171308 () Unit!11461)

(declare-fun zeroValue!472 () V!12925)

(declare-fun addCommutativeForDiffKeys!209 (ListLongMap!4845 (_ BitVec 64) V!12925 (_ BitVec 64) V!12925) Unit!11461)

(assert (=> b!373124 (= lt!171308 (addCommutativeForDiffKeys!209 lt!171306 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!171310 () ListLongMap!4845)

(declare-fun lt!171304 () tuple2!5918)

(assert (=> b!373124 (= lt!171310 (+!779 lt!171315 lt!171304))))

(declare-fun lt!171311 () ListLongMap!4845)

(declare-fun lt!171316 () tuple2!5918)

(assert (=> b!373124 (= lt!171315 (+!779 lt!171311 lt!171316))))

(declare-fun lt!171300 () ListLongMap!4845)

(declare-fun lt!171301 () ListLongMap!4845)

(assert (=> b!373124 (= lt!171300 lt!171301)))

(assert (=> b!373124 (= lt!171301 (+!779 lt!171312 lt!171304))))

(assert (=> b!373124 (= lt!171312 (+!779 lt!171306 lt!171316))))

(declare-fun lt!171313 () ListLongMap!4845)

(assert (=> b!373124 (= lt!171310 (+!779 (+!779 lt!171313 lt!171316) lt!171304))))

(declare-fun minValue!472 () V!12925)

(assert (=> b!373124 (= lt!171304 (tuple2!5919 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!373124 (= lt!171316 (tuple2!5919 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!373125 () Bool)

(declare-fun e!227499 () Bool)

(assert (=> b!373125 (= e!227499 tp_is_empty!8865)))

(declare-fun b!373126 () Bool)

(declare-fun res!210208 () Bool)

(assert (=> b!373126 (=> (not res!210208) (not e!227497))))

(assert (=> b!373126 (= res!210208 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10636 _keys!658))))))

(declare-fun b!373127 () Bool)

(declare-fun e!227492 () Bool)

(assert (=> b!373127 (= e!227492 tp_is_empty!8865)))

(declare-fun b!373128 () Bool)

(declare-fun res!210206 () Bool)

(assert (=> b!373128 (=> (not res!210206) (not e!227497))))

(assert (=> b!373128 (= res!210206 (or (= (select (arr!10284 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10284 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!373129 () Bool)

(assert (=> b!373129 (= e!227495 true)))

(assert (=> b!373129 (= (+!779 lt!171309 lt!171304) (+!779 lt!171301 lt!171314))))

(declare-fun lt!171303 () Unit!11461)

(assert (=> b!373129 (= lt!171303 (addCommutativeForDiffKeys!209 lt!171312 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!373130 () Bool)

(declare-fun res!210209 () Bool)

(assert (=> b!373130 (=> (not res!210209) (not e!227498))))

(assert (=> b!373130 (= res!210209 (arrayNoDuplicates!0 lt!171305 #b00000000000000000000000000000000 Nil!5791))))

(declare-fun b!373131 () Bool)

(assert (=> b!373131 (= e!227498 (not e!227496))))

(declare-fun res!210205 () Bool)

(assert (=> b!373131 (=> res!210205 e!227496)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!373131 (= res!210205 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun getCurrentListMap!1887 (array!21637 array!21639 (_ BitVec 32) (_ BitVec 32) V!12925 V!12925 (_ BitVec 32) Int) ListLongMap!4845)

(assert (=> b!373131 (= lt!171300 (getCurrentListMap!1887 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!171307 () array!21639)

(assert (=> b!373131 (= lt!171310 (getCurrentListMap!1887 lt!171305 lt!171307 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!373131 (and (= lt!171313 lt!171311) (= lt!171311 lt!171313))))

(assert (=> b!373131 (= lt!171311 (+!779 lt!171306 lt!171314))))

(assert (=> b!373131 (= lt!171314 (tuple2!5919 k0!778 v!373))))

(declare-fun lt!171302 () Unit!11461)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!38 (array!21637 array!21639 (_ BitVec 32) (_ BitVec 32) V!12925 V!12925 (_ BitVec 32) (_ BitVec 64) V!12925 (_ BitVec 32) Int) Unit!11461)

(assert (=> b!373131 (= lt!171302 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!38 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!705 (array!21637 array!21639 (_ BitVec 32) (_ BitVec 32) V!12925 V!12925 (_ BitVec 32) Int) ListLongMap!4845)

(assert (=> b!373131 (= lt!171313 (getCurrentListMapNoExtraKeys!705 lt!171305 lt!171307 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!373131 (= lt!171307 (array!21640 (store (arr!10285 _values!506) i!548 (ValueCellFull!4089 v!373)) (size!10637 _values!506)))))

(assert (=> b!373131 (= lt!171306 (getCurrentListMapNoExtraKeys!705 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!373132 () Bool)

(declare-fun res!210203 () Bool)

(assert (=> b!373132 (=> (not res!210203) (not e!227497))))

(assert (=> b!373132 (= res!210203 (and (= (size!10637 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10636 _keys!658) (size!10637 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!373133 () Bool)

(declare-fun mapRes!14862 () Bool)

(assert (=> b!373133 (= e!227494 (and e!227499 mapRes!14862))))

(declare-fun condMapEmpty!14862 () Bool)

(declare-fun mapDefault!14862 () ValueCell!4089)

(assert (=> b!373133 (= condMapEmpty!14862 (= (arr!10285 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4089)) mapDefault!14862)))))

(declare-fun b!373134 () Bool)

(declare-fun res!210212 () Bool)

(assert (=> b!373134 (=> (not res!210212) (not e!227497))))

(declare-fun arrayContainsKey!0 (array!21637 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!373134 (= res!210212 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!373135 () Bool)

(declare-fun res!210202 () Bool)

(assert (=> b!373135 (=> (not res!210202) (not e!227497))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!373135 (= res!210202 (validKeyInArray!0 k0!778))))

(declare-fun mapNonEmpty!14862 () Bool)

(declare-fun tp!29366 () Bool)

(assert (=> mapNonEmpty!14862 (= mapRes!14862 (and tp!29366 e!227492))))

(declare-fun mapRest!14862 () (Array (_ BitVec 32) ValueCell!4089))

(declare-fun mapKey!14862 () (_ BitVec 32))

(declare-fun mapValue!14862 () ValueCell!4089)

(assert (=> mapNonEmpty!14862 (= (arr!10285 _values!506) (store mapRest!14862 mapKey!14862 mapValue!14862))))

(declare-fun b!373136 () Bool)

(declare-fun res!210201 () Bool)

(assert (=> b!373136 (=> (not res!210201) (not e!227497))))

(assert (=> b!373136 (= res!210201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!14862 () Bool)

(assert (=> mapIsEmpty!14862 mapRes!14862))

(assert (= (and start!37098 res!210211) b!373132))

(assert (= (and b!373132 res!210203) b!373136))

(assert (= (and b!373136 res!210201) b!373122))

(assert (= (and b!373122 res!210210) b!373126))

(assert (= (and b!373126 res!210208) b!373135))

(assert (= (and b!373135 res!210202) b!373128))

(assert (= (and b!373128 res!210206) b!373134))

(assert (= (and b!373134 res!210212) b!373123))

(assert (= (and b!373123 res!210207) b!373130))

(assert (= (and b!373130 res!210209) b!373131))

(assert (= (and b!373131 (not res!210205)) b!373124))

(assert (= (and b!373124 (not res!210204)) b!373129))

(assert (= (and b!373133 condMapEmpty!14862) mapIsEmpty!14862))

(assert (= (and b!373133 (not condMapEmpty!14862)) mapNonEmpty!14862))

(get-info :version)

(assert (= (and mapNonEmpty!14862 ((_ is ValueCellFull!4089) mapValue!14862)) b!373127))

(assert (= (and b!373133 ((_ is ValueCellFull!4089) mapDefault!14862)) b!373125))

(assert (= start!37098 b!373133))

(declare-fun m!369041 () Bool)

(assert (=> b!373128 m!369041))

(declare-fun m!369043 () Bool)

(assert (=> b!373122 m!369043))

(declare-fun m!369045 () Bool)

(assert (=> b!373135 m!369045))

(declare-fun m!369047 () Bool)

(assert (=> mapNonEmpty!14862 m!369047))

(declare-fun m!369049 () Bool)

(assert (=> b!373124 m!369049))

(declare-fun m!369051 () Bool)

(assert (=> b!373124 m!369051))

(declare-fun m!369053 () Bool)

(assert (=> b!373124 m!369053))

(declare-fun m!369055 () Bool)

(assert (=> b!373124 m!369055))

(declare-fun m!369057 () Bool)

(assert (=> b!373124 m!369057))

(declare-fun m!369059 () Bool)

(assert (=> b!373124 m!369059))

(declare-fun m!369061 () Bool)

(assert (=> b!373124 m!369061))

(assert (=> b!373124 m!369055))

(declare-fun m!369063 () Bool)

(assert (=> b!373124 m!369063))

(declare-fun m!369065 () Bool)

(assert (=> b!373136 m!369065))

(declare-fun m!369067 () Bool)

(assert (=> start!37098 m!369067))

(declare-fun m!369069 () Bool)

(assert (=> start!37098 m!369069))

(declare-fun m!369071 () Bool)

(assert (=> start!37098 m!369071))

(declare-fun m!369073 () Bool)

(assert (=> b!373134 m!369073))

(declare-fun m!369075 () Bool)

(assert (=> b!373130 m!369075))

(declare-fun m!369077 () Bool)

(assert (=> b!373129 m!369077))

(declare-fun m!369079 () Bool)

(assert (=> b!373129 m!369079))

(declare-fun m!369081 () Bool)

(assert (=> b!373129 m!369081))

(declare-fun m!369083 () Bool)

(assert (=> b!373131 m!369083))

(declare-fun m!369085 () Bool)

(assert (=> b!373131 m!369085))

(declare-fun m!369087 () Bool)

(assert (=> b!373131 m!369087))

(declare-fun m!369089 () Bool)

(assert (=> b!373131 m!369089))

(declare-fun m!369091 () Bool)

(assert (=> b!373131 m!369091))

(declare-fun m!369093 () Bool)

(assert (=> b!373131 m!369093))

(declare-fun m!369095 () Bool)

(assert (=> b!373131 m!369095))

(declare-fun m!369097 () Bool)

(assert (=> b!373123 m!369097))

(declare-fun m!369099 () Bool)

(assert (=> b!373123 m!369099))

(check-sat (not b!373135) tp_is_empty!8865 (not b_next!8217) (not b!373124) (not b!373129) (not b!373123) (not b!373134) (not start!37098) (not mapNonEmpty!14862) (not b!373130) (not b!373122) b_and!15477 (not b!373136) (not b!373131))
(check-sat b_and!15477 (not b_next!8217))
