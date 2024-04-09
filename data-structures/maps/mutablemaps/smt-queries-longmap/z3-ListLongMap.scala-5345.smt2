; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71458 () Bool)

(assert start!71458)

(declare-fun b_free!13479 () Bool)

(declare-fun b_next!13479 () Bool)

(assert (=> start!71458 (= b_free!13479 (not b_next!13479))))

(declare-fun tp!47218 () Bool)

(declare-fun b_and!22503 () Bool)

(assert (=> start!71458 (= tp!47218 b_and!22503)))

(declare-fun mapNonEmpty!24430 () Bool)

(declare-fun mapRes!24430 () Bool)

(declare-fun tp!47217 () Bool)

(declare-fun e!462391 () Bool)

(assert (=> mapNonEmpty!24430 (= mapRes!24430 (and tp!47217 e!462391))))

(declare-datatypes ((V!25253 0))(
  ( (V!25254 (val!7642 Int)) )
))
(declare-datatypes ((ValueCell!7179 0))(
  ( (ValueCellFull!7179 (v!10078 V!25253)) (EmptyCell!7179) )
))
(declare-fun mapRest!24430 () (Array (_ BitVec 32) ValueCell!7179))

(declare-datatypes ((array!46520 0))(
  ( (array!46521 (arr!22294 (Array (_ BitVec 32) ValueCell!7179)) (size!22715 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46520)

(declare-fun mapValue!24430 () ValueCell!7179)

(declare-fun mapKey!24430 () (_ BitVec 32))

(assert (=> mapNonEmpty!24430 (= (arr!22294 _values!788) (store mapRest!24430 mapKey!24430 mapValue!24430))))

(declare-fun res!565144 () Bool)

(declare-fun e!462389 () Bool)

(assert (=> start!71458 (=> (not res!565144) (not e!462389))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71458 (= res!565144 (validMask!0 mask!1312))))

(assert (=> start!71458 e!462389))

(declare-fun tp_is_empty!15189 () Bool)

(assert (=> start!71458 tp_is_empty!15189))

(declare-datatypes ((array!46522 0))(
  ( (array!46523 (arr!22295 (Array (_ BitVec 32) (_ BitVec 64))) (size!22716 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46522)

(declare-fun array_inv!17735 (array!46522) Bool)

(assert (=> start!71458 (array_inv!17735 _keys!976)))

(assert (=> start!71458 true))

(declare-fun e!462390 () Bool)

(declare-fun array_inv!17736 (array!46520) Bool)

(assert (=> start!71458 (and (array_inv!17736 _values!788) e!462390)))

(assert (=> start!71458 tp!47218))

(declare-fun b!829443 () Bool)

(declare-fun res!565142 () Bool)

(assert (=> b!829443 (=> (not res!565142) (not e!462389))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!829443 (= res!565142 (and (= (size!22715 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22716 _keys!976) (size!22715 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!829444 () Bool)

(assert (=> b!829444 (= e!462391 tp_is_empty!15189)))

(declare-fun b!829445 () Bool)

(declare-fun res!565140 () Bool)

(assert (=> b!829445 (=> (not res!565140) (not e!462389))))

(declare-datatypes ((List!15991 0))(
  ( (Nil!15988) (Cons!15987 (h!17116 (_ BitVec 64)) (t!22360 List!15991)) )
))
(declare-fun arrayNoDuplicates!0 (array!46522 (_ BitVec 32) List!15991) Bool)

(assert (=> b!829445 (= res!565140 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15988))))

(declare-fun b!829446 () Bool)

(declare-fun e!462392 () Bool)

(assert (=> b!829446 (= e!462390 (and e!462392 mapRes!24430))))

(declare-fun condMapEmpty!24430 () Bool)

(declare-fun mapDefault!24430 () ValueCell!7179)

(assert (=> b!829446 (= condMapEmpty!24430 (= (arr!22294 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7179)) mapDefault!24430)))))

(declare-fun mapIsEmpty!24430 () Bool)

(assert (=> mapIsEmpty!24430 mapRes!24430))

(declare-fun b!829447 () Bool)

(assert (=> b!829447 (= e!462392 tp_is_empty!15189)))

(declare-fun b!829448 () Bool)

(declare-fun res!565143 () Bool)

(assert (=> b!829448 (=> (not res!565143) (not e!462389))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46522 (_ BitVec 32)) Bool)

(assert (=> b!829448 (= res!565143 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun e!462388 () Bool)

(declare-datatypes ((tuple2!10160 0))(
  ( (tuple2!10161 (_1!5090 (_ BitVec 64)) (_2!5090 V!25253)) )
))
(declare-fun lt!376189 () tuple2!10160)

(declare-fun b!829449 () Bool)

(declare-datatypes ((List!15992 0))(
  ( (Nil!15989) (Cons!15988 (h!17117 tuple2!10160) (t!22361 List!15992)) )
))
(declare-datatypes ((ListLongMap!8997 0))(
  ( (ListLongMap!8998 (toList!4514 List!15992)) )
))
(declare-fun lt!376193 () ListLongMap!8997)

(declare-fun lt!376197 () ListLongMap!8997)

(declare-fun +!1945 (ListLongMap!8997 tuple2!10160) ListLongMap!8997)

(assert (=> b!829449 (= e!462388 (= (+!1945 lt!376197 lt!376189) lt!376193))))

(declare-fun lt!376196 () ListLongMap!8997)

(declare-fun lt!376195 () ListLongMap!8997)

(assert (=> b!829449 (= lt!376196 (+!1945 lt!376195 lt!376189))))

(declare-datatypes ((Unit!28417 0))(
  ( (Unit!28418) )
))
(declare-fun lt!376190 () Unit!28417)

(declare-fun minValue!754 () V!25253)

(declare-fun zeroValueAfter!34 () V!25253)

(declare-fun lt!376192 () ListLongMap!8997)

(declare-fun addCommutativeForDiffKeys!468 (ListLongMap!8997 (_ BitVec 64) V!25253 (_ BitVec 64) V!25253) Unit!28417)

(assert (=> b!829449 (= lt!376190 (addCommutativeForDiffKeys!468 lt!376192 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!829449 (= lt!376193 lt!376196)))

(declare-fun lt!376194 () tuple2!10160)

(assert (=> b!829449 (= lt!376196 (+!1945 (+!1945 lt!376192 lt!376189) lt!376194))))

(assert (=> b!829449 (= lt!376189 (tuple2!10161 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(assert (=> b!829449 (= lt!376197 lt!376195)))

(assert (=> b!829449 (= lt!376195 (+!1945 lt!376192 lt!376194))))

(assert (=> b!829449 (= lt!376194 (tuple2!10161 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2587 (array!46522 array!46520 (_ BitVec 32) (_ BitVec 32) V!25253 V!25253 (_ BitVec 32) Int) ListLongMap!8997)

(assert (=> b!829449 (= lt!376193 (getCurrentListMap!2587 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!25253)

(assert (=> b!829449 (= lt!376197 (getCurrentListMap!2587 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!829450 () Bool)

(assert (=> b!829450 (= e!462389 (not e!462388))))

(declare-fun res!565141 () Bool)

(assert (=> b!829450 (=> res!565141 e!462388)))

(assert (=> b!829450 (= res!565141 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!376191 () ListLongMap!8997)

(assert (=> b!829450 (= lt!376192 lt!376191)))

(declare-fun lt!376188 () Unit!28417)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!604 (array!46522 array!46520 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25253 V!25253 V!25253 V!25253 (_ BitVec 32) Int) Unit!28417)

(assert (=> b!829450 (= lt!376188 (lemmaNoChangeToArrayThenSameMapNoExtras!604 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2514 (array!46522 array!46520 (_ BitVec 32) (_ BitVec 32) V!25253 V!25253 (_ BitVec 32) Int) ListLongMap!8997)

(assert (=> b!829450 (= lt!376191 (getCurrentListMapNoExtraKeys!2514 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!829450 (= lt!376192 (getCurrentListMapNoExtraKeys!2514 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (= (and start!71458 res!565144) b!829443))

(assert (= (and b!829443 res!565142) b!829448))

(assert (= (and b!829448 res!565143) b!829445))

(assert (= (and b!829445 res!565140) b!829450))

(assert (= (and b!829450 (not res!565141)) b!829449))

(assert (= (and b!829446 condMapEmpty!24430) mapIsEmpty!24430))

(assert (= (and b!829446 (not condMapEmpty!24430)) mapNonEmpty!24430))

(get-info :version)

(assert (= (and mapNonEmpty!24430 ((_ is ValueCellFull!7179) mapValue!24430)) b!829444))

(assert (= (and b!829446 ((_ is ValueCellFull!7179) mapDefault!24430)) b!829447))

(assert (= start!71458 b!829446))

(declare-fun m!772537 () Bool)

(assert (=> b!829445 m!772537))

(declare-fun m!772539 () Bool)

(assert (=> mapNonEmpty!24430 m!772539))

(declare-fun m!772541 () Bool)

(assert (=> start!71458 m!772541))

(declare-fun m!772543 () Bool)

(assert (=> start!71458 m!772543))

(declare-fun m!772545 () Bool)

(assert (=> start!71458 m!772545))

(declare-fun m!772547 () Bool)

(assert (=> b!829450 m!772547))

(declare-fun m!772549 () Bool)

(assert (=> b!829450 m!772549))

(declare-fun m!772551 () Bool)

(assert (=> b!829450 m!772551))

(declare-fun m!772553 () Bool)

(assert (=> b!829449 m!772553))

(declare-fun m!772555 () Bool)

(assert (=> b!829449 m!772555))

(declare-fun m!772557 () Bool)

(assert (=> b!829449 m!772557))

(declare-fun m!772559 () Bool)

(assert (=> b!829449 m!772559))

(declare-fun m!772561 () Bool)

(assert (=> b!829449 m!772561))

(assert (=> b!829449 m!772555))

(declare-fun m!772563 () Bool)

(assert (=> b!829449 m!772563))

(declare-fun m!772565 () Bool)

(assert (=> b!829449 m!772565))

(declare-fun m!772567 () Bool)

(assert (=> b!829449 m!772567))

(declare-fun m!772569 () Bool)

(assert (=> b!829448 m!772569))

(check-sat b_and!22503 (not b!829449) (not b!829445) (not b_next!13479) (not start!71458) (not b!829448) (not b!829450) (not mapNonEmpty!24430) tp_is_empty!15189)
(check-sat b_and!22503 (not b_next!13479))
