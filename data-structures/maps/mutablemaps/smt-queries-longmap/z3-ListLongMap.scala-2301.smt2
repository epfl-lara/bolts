; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37278 () Bool)

(assert start!37278)

(declare-fun b_free!8397 () Bool)

(declare-fun b_next!8397 () Bool)

(assert (=> start!37278 (= b_free!8397 (not b_next!8397))))

(declare-fun tp!29906 () Bool)

(declare-fun b_and!15657 () Bool)

(assert (=> start!37278 (= tp!29906 b_and!15657)))

(declare-fun b!377181 () Bool)

(declare-fun res!213451 () Bool)

(declare-fun e!229655 () Bool)

(assert (=> b!377181 (=> (not res!213451) (not e!229655))))

(declare-datatypes ((array!21989 0))(
  ( (array!21990 (arr!10460 (Array (_ BitVec 32) (_ BitVec 64))) (size!10812 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21989)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!377181 (= res!213451 (or (= (select (arr!10460 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10460 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!377182 () Bool)

(declare-fun e!229652 () Bool)

(assert (=> b!377182 (= e!229655 e!229652)))

(declare-fun res!213456 () Bool)

(assert (=> b!377182 (=> (not res!213456) (not e!229652))))

(declare-fun lt!175411 () array!21989)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21989 (_ BitVec 32)) Bool)

(assert (=> b!377182 (= res!213456 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!175411 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!377182 (= lt!175411 (array!21990 (store (arr!10460 _keys!658) i!548 k0!778) (size!10812 _keys!658)))))

(declare-fun mapNonEmpty!15132 () Bool)

(declare-fun mapRes!15132 () Bool)

(declare-fun tp!29907 () Bool)

(declare-fun e!229658 () Bool)

(assert (=> mapNonEmpty!15132 (= mapRes!15132 (and tp!29907 e!229658))))

(declare-datatypes ((V!13165 0))(
  ( (V!13166 (val!4567 Int)) )
))
(declare-datatypes ((ValueCell!4179 0))(
  ( (ValueCellFull!4179 (v!6760 V!13165)) (EmptyCell!4179) )
))
(declare-fun mapRest!15132 () (Array (_ BitVec 32) ValueCell!4179))

(declare-datatypes ((array!21991 0))(
  ( (array!21992 (arr!10461 (Array (_ BitVec 32) ValueCell!4179)) (size!10813 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21991)

(declare-fun mapValue!15132 () ValueCell!4179)

(declare-fun mapKey!15132 () (_ BitVec 32))

(assert (=> mapNonEmpty!15132 (= (arr!10461 _values!506) (store mapRest!15132 mapKey!15132 mapValue!15132))))

(declare-fun b!377183 () Bool)

(declare-fun e!229657 () Bool)

(declare-fun tp_is_empty!9045 () Bool)

(assert (=> b!377183 (= e!229657 tp_is_empty!9045)))

(declare-fun res!213460 () Bool)

(assert (=> start!37278 (=> (not res!213460) (not e!229655))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37278 (= res!213460 (validMask!0 mask!970))))

(assert (=> start!37278 e!229655))

(declare-fun e!229656 () Bool)

(declare-fun array_inv!7702 (array!21991) Bool)

(assert (=> start!37278 (and (array_inv!7702 _values!506) e!229656)))

(assert (=> start!37278 tp!29906))

(assert (=> start!37278 true))

(assert (=> start!37278 tp_is_empty!9045))

(declare-fun array_inv!7703 (array!21989) Bool)

(assert (=> start!37278 (array_inv!7703 _keys!658)))

(declare-fun b!377184 () Bool)

(declare-fun res!213459 () Bool)

(assert (=> b!377184 (=> (not res!213459) (not e!229652))))

(declare-datatypes ((List!5932 0))(
  ( (Nil!5929) (Cons!5928 (h!6784 (_ BitVec 64)) (t!11090 List!5932)) )
))
(declare-fun arrayNoDuplicates!0 (array!21989 (_ BitVec 32) List!5932) Bool)

(assert (=> b!377184 (= res!213459 (arrayNoDuplicates!0 lt!175411 #b00000000000000000000000000000000 Nil!5929))))

(declare-fun b!377185 () Bool)

(assert (=> b!377185 (= e!229658 tp_is_empty!9045)))

(declare-fun b!377186 () Bool)

(declare-fun res!213450 () Bool)

(assert (=> b!377186 (=> (not res!213450) (not e!229655))))

(assert (=> b!377186 (= res!213450 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5929))))

(declare-fun b!377187 () Bool)

(declare-fun res!213457 () Bool)

(assert (=> b!377187 (=> (not res!213457) (not e!229655))))

(assert (=> b!377187 (= res!213457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!377188 () Bool)

(declare-fun res!213458 () Bool)

(assert (=> b!377188 (=> (not res!213458) (not e!229655))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!377188 (= res!213458 (and (= (size!10813 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10812 _keys!658) (size!10813 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!377189 () Bool)

(declare-fun res!213454 () Bool)

(assert (=> b!377189 (=> (not res!213454) (not e!229655))))

(assert (=> b!377189 (= res!213454 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10812 _keys!658))))))

(declare-fun mapIsEmpty!15132 () Bool)

(assert (=> mapIsEmpty!15132 mapRes!15132))

(declare-fun b!377190 () Bool)

(declare-fun e!229653 () Bool)

(assert (=> b!377190 (= e!229653 true)))

(declare-datatypes ((tuple2!6062 0))(
  ( (tuple2!6063 (_1!3041 (_ BitVec 64)) (_2!3041 V!13165)) )
))
(declare-datatypes ((List!5933 0))(
  ( (Nil!5930) (Cons!5929 (h!6785 tuple2!6062) (t!11091 List!5933)) )
))
(declare-datatypes ((ListLongMap!4989 0))(
  ( (ListLongMap!4990 (toList!2510 List!5933)) )
))
(declare-fun lt!175410 () ListLongMap!4989)

(declare-fun lt!175403 () ListLongMap!4989)

(declare-fun lt!175406 () tuple2!6062)

(declare-fun +!851 (ListLongMap!4989 tuple2!6062) ListLongMap!4989)

(assert (=> b!377190 (= lt!175410 (+!851 lt!175403 lt!175406))))

(declare-datatypes ((Unit!11603 0))(
  ( (Unit!11604) )
))
(declare-fun lt!175405 () Unit!11603)

(declare-fun v!373 () V!13165)

(declare-fun lt!175414 () ListLongMap!4989)

(declare-fun zeroValue!472 () V!13165)

(declare-fun addCommutativeForDiffKeys!272 (ListLongMap!4989 (_ BitVec 64) V!13165 (_ BitVec 64) V!13165) Unit!11603)

(assert (=> b!377190 (= lt!175405 (addCommutativeForDiffKeys!272 lt!175414 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!377191 () Bool)

(declare-fun e!229654 () Bool)

(assert (=> b!377191 (= e!229652 (not e!229654))))

(declare-fun res!213455 () Bool)

(assert (=> b!377191 (=> res!213455 e!229654)))

(assert (=> b!377191 (= res!213455 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!175404 () ListLongMap!4989)

(declare-fun defaultEntry!514 () Int)

(declare-fun minValue!472 () V!13165)

(declare-fun getCurrentListMap!1947 (array!21989 array!21991 (_ BitVec 32) (_ BitVec 32) V!13165 V!13165 (_ BitVec 32) Int) ListLongMap!4989)

(assert (=> b!377191 (= lt!175404 (getCurrentListMap!1947 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175413 () ListLongMap!4989)

(declare-fun lt!175409 () array!21991)

(assert (=> b!377191 (= lt!175413 (getCurrentListMap!1947 lt!175411 lt!175409 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175412 () ListLongMap!4989)

(declare-fun lt!175407 () ListLongMap!4989)

(assert (=> b!377191 (and (= lt!175412 lt!175407) (= lt!175407 lt!175412))))

(assert (=> b!377191 (= lt!175407 (+!851 lt!175414 lt!175406))))

(assert (=> b!377191 (= lt!175406 (tuple2!6063 k0!778 v!373))))

(declare-fun lt!175408 () Unit!11603)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!98 (array!21989 array!21991 (_ BitVec 32) (_ BitVec 32) V!13165 V!13165 (_ BitVec 32) (_ BitVec 64) V!13165 (_ BitVec 32) Int) Unit!11603)

(assert (=> b!377191 (= lt!175408 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!98 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!765 (array!21989 array!21991 (_ BitVec 32) (_ BitVec 32) V!13165 V!13165 (_ BitVec 32) Int) ListLongMap!4989)

(assert (=> b!377191 (= lt!175412 (getCurrentListMapNoExtraKeys!765 lt!175411 lt!175409 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!377191 (= lt!175409 (array!21992 (store (arr!10461 _values!506) i!548 (ValueCellFull!4179 v!373)) (size!10813 _values!506)))))

(assert (=> b!377191 (= lt!175414 (getCurrentListMapNoExtraKeys!765 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!377192 () Bool)

(declare-fun res!213461 () Bool)

(assert (=> b!377192 (=> (not res!213461) (not e!229655))))

(declare-fun arrayContainsKey!0 (array!21989 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!377192 (= res!213461 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!377193 () Bool)

(declare-fun res!213452 () Bool)

(assert (=> b!377193 (=> (not res!213452) (not e!229655))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!377193 (= res!213452 (validKeyInArray!0 k0!778))))

(declare-fun b!377194 () Bool)

(assert (=> b!377194 (= e!229656 (and e!229657 mapRes!15132))))

(declare-fun condMapEmpty!15132 () Bool)

(declare-fun mapDefault!15132 () ValueCell!4179)

(assert (=> b!377194 (= condMapEmpty!15132 (= (arr!10461 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4179)) mapDefault!15132)))))

(declare-fun b!377195 () Bool)

(assert (=> b!377195 (= e!229654 e!229653)))

(declare-fun res!213453 () Bool)

(assert (=> b!377195 (=> res!213453 e!229653)))

(assert (=> b!377195 (= res!213453 (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!377195 (= lt!175413 lt!175410)))

(declare-fun lt!175402 () tuple2!6062)

(assert (=> b!377195 (= lt!175410 (+!851 lt!175407 lt!175402))))

(assert (=> b!377195 (= lt!175404 lt!175403)))

(assert (=> b!377195 (= lt!175403 (+!851 lt!175414 lt!175402))))

(assert (=> b!377195 (= lt!175413 (+!851 lt!175412 lt!175402))))

(assert (=> b!377195 (= lt!175402 (tuple2!6063 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(assert (= (and start!37278 res!213460) b!377188))

(assert (= (and b!377188 res!213458) b!377187))

(assert (= (and b!377187 res!213457) b!377186))

(assert (= (and b!377186 res!213450) b!377189))

(assert (= (and b!377189 res!213454) b!377193))

(assert (= (and b!377193 res!213452) b!377181))

(assert (= (and b!377181 res!213451) b!377192))

(assert (= (and b!377192 res!213461) b!377182))

(assert (= (and b!377182 res!213456) b!377184))

(assert (= (and b!377184 res!213459) b!377191))

(assert (= (and b!377191 (not res!213455)) b!377195))

(assert (= (and b!377195 (not res!213453)) b!377190))

(assert (= (and b!377194 condMapEmpty!15132) mapIsEmpty!15132))

(assert (= (and b!377194 (not condMapEmpty!15132)) mapNonEmpty!15132))

(get-info :version)

(assert (= (and mapNonEmpty!15132 ((_ is ValueCellFull!4179) mapValue!15132)) b!377185))

(assert (= (and b!377194 ((_ is ValueCellFull!4179) mapDefault!15132)) b!377183))

(assert (= start!37278 b!377194))

(declare-fun m!373985 () Bool)

(assert (=> b!377193 m!373985))

(declare-fun m!373987 () Bool)

(assert (=> b!377186 m!373987))

(declare-fun m!373989 () Bool)

(assert (=> b!377195 m!373989))

(declare-fun m!373991 () Bool)

(assert (=> b!377195 m!373991))

(declare-fun m!373993 () Bool)

(assert (=> b!377195 m!373993))

(declare-fun m!373995 () Bool)

(assert (=> b!377181 m!373995))

(declare-fun m!373997 () Bool)

(assert (=> b!377192 m!373997))

(declare-fun m!373999 () Bool)

(assert (=> b!377182 m!373999))

(declare-fun m!374001 () Bool)

(assert (=> b!377182 m!374001))

(declare-fun m!374003 () Bool)

(assert (=> b!377190 m!374003))

(declare-fun m!374005 () Bool)

(assert (=> b!377190 m!374005))

(declare-fun m!374007 () Bool)

(assert (=> b!377191 m!374007))

(declare-fun m!374009 () Bool)

(assert (=> b!377191 m!374009))

(declare-fun m!374011 () Bool)

(assert (=> b!377191 m!374011))

(declare-fun m!374013 () Bool)

(assert (=> b!377191 m!374013))

(declare-fun m!374015 () Bool)

(assert (=> b!377191 m!374015))

(declare-fun m!374017 () Bool)

(assert (=> b!377191 m!374017))

(declare-fun m!374019 () Bool)

(assert (=> b!377191 m!374019))

(declare-fun m!374021 () Bool)

(assert (=> start!37278 m!374021))

(declare-fun m!374023 () Bool)

(assert (=> start!37278 m!374023))

(declare-fun m!374025 () Bool)

(assert (=> start!37278 m!374025))

(declare-fun m!374027 () Bool)

(assert (=> b!377187 m!374027))

(declare-fun m!374029 () Bool)

(assert (=> mapNonEmpty!15132 m!374029))

(declare-fun m!374031 () Bool)

(assert (=> b!377184 m!374031))

(check-sat (not b_next!8397) (not b!377190) (not b!377182) b_and!15657 (not b!377184) tp_is_empty!9045 (not b!377195) (not b!377192) (not mapNonEmpty!15132) (not start!37278) (not b!377186) (not b!377191) (not b!377187) (not b!377193))
(check-sat b_and!15657 (not b_next!8397))
