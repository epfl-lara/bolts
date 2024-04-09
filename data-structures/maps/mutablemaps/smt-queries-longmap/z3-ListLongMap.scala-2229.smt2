; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36846 () Bool)

(assert start!36846)

(declare-fun b_free!7965 () Bool)

(declare-fun b_next!7965 () Bool)

(assert (=> start!36846 (= b_free!7965 (not b_next!7965))))

(declare-fun tp!28610 () Bool)

(declare-fun b_and!15225 () Bool)

(assert (=> start!36846 (= tp!28610 b_and!15225)))

(declare-fun b!368162 () Bool)

(declare-fun e!225190 () Bool)

(declare-fun tp_is_empty!8613 () Bool)

(assert (=> b!368162 (= e!225190 tp_is_empty!8613)))

(declare-fun res!206375 () Bool)

(declare-fun e!225189 () Bool)

(assert (=> start!36846 (=> (not res!206375) (not e!225189))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36846 (= res!206375 (validMask!0 mask!970))))

(assert (=> start!36846 e!225189))

(assert (=> start!36846 true))

(declare-datatypes ((V!12589 0))(
  ( (V!12590 (val!4351 Int)) )
))
(declare-datatypes ((ValueCell!3963 0))(
  ( (ValueCellFull!3963 (v!6544 V!12589)) (EmptyCell!3963) )
))
(declare-datatypes ((array!21151 0))(
  ( (array!21152 (arr!10041 (Array (_ BitVec 32) ValueCell!3963)) (size!10393 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21151)

(declare-fun e!225188 () Bool)

(declare-fun array_inv!7418 (array!21151) Bool)

(assert (=> start!36846 (and (array_inv!7418 _values!506) e!225188)))

(assert (=> start!36846 tp!28610))

(assert (=> start!36846 tp_is_empty!8613))

(declare-datatypes ((array!21153 0))(
  ( (array!21154 (arr!10042 (Array (_ BitVec 32) (_ BitVec 64))) (size!10394 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21153)

(declare-fun array_inv!7419 (array!21153) Bool)

(assert (=> start!36846 (array_inv!7419 _keys!658)))

(declare-fun b!368163 () Bool)

(declare-fun res!206379 () Bool)

(assert (=> b!368163 (=> (not res!206379) (not e!225189))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!368163 (= res!206379 (and (= (size!10393 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10394 _keys!658) (size!10393 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!14484 () Bool)

(declare-fun mapRes!14484 () Bool)

(assert (=> mapIsEmpty!14484 mapRes!14484))

(declare-fun mapNonEmpty!14484 () Bool)

(declare-fun tp!28611 () Bool)

(declare-fun e!225187 () Bool)

(assert (=> mapNonEmpty!14484 (= mapRes!14484 (and tp!28611 e!225187))))

(declare-fun mapKey!14484 () (_ BitVec 32))

(declare-fun mapValue!14484 () ValueCell!3963)

(declare-fun mapRest!14484 () (Array (_ BitVec 32) ValueCell!3963))

(assert (=> mapNonEmpty!14484 (= (arr!10041 _values!506) (store mapRest!14484 mapKey!14484 mapValue!14484))))

(declare-fun b!368164 () Bool)

(declare-fun res!206381 () Bool)

(assert (=> b!368164 (=> (not res!206381) (not e!225189))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!368164 (= res!206381 (or (= (select (arr!10042 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10042 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!368165 () Bool)

(declare-fun res!206384 () Bool)

(assert (=> b!368165 (=> (not res!206384) (not e!225189))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21153 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!368165 (= res!206384 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!368166 () Bool)

(declare-fun res!206376 () Bool)

(assert (=> b!368166 (=> (not res!206376) (not e!225189))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!368166 (= res!206376 (validKeyInArray!0 k0!778))))

(declare-fun b!368167 () Bool)

(assert (=> b!368167 (= e!225188 (and e!225190 mapRes!14484))))

(declare-fun condMapEmpty!14484 () Bool)

(declare-fun mapDefault!14484 () ValueCell!3963)

(assert (=> b!368167 (= condMapEmpty!14484 (= (arr!10041 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3963)) mapDefault!14484)))))

(declare-fun b!368168 () Bool)

(declare-fun res!206377 () Bool)

(assert (=> b!368168 (=> (not res!206377) (not e!225189))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21153 (_ BitVec 32)) Bool)

(assert (=> b!368168 (= res!206377 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!368169 () Bool)

(declare-fun res!206378 () Bool)

(declare-fun e!225191 () Bool)

(assert (=> b!368169 (=> (not res!206378) (not e!225191))))

(declare-fun lt!169480 () array!21153)

(declare-datatypes ((List!5618 0))(
  ( (Nil!5615) (Cons!5614 (h!6470 (_ BitVec 64)) (t!10776 List!5618)) )
))
(declare-fun arrayNoDuplicates!0 (array!21153 (_ BitVec 32) List!5618) Bool)

(assert (=> b!368169 (= res!206378 (arrayNoDuplicates!0 lt!169480 #b00000000000000000000000000000000 Nil!5615))))

(declare-fun b!368170 () Bool)

(assert (=> b!368170 (= e!225187 tp_is_empty!8613)))

(declare-fun b!368171 () Bool)

(assert (=> b!368171 (= e!225191 false)))

(declare-fun zeroValue!472 () V!12589)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5758 0))(
  ( (tuple2!5759 (_1!2889 (_ BitVec 64)) (_2!2889 V!12589)) )
))
(declare-datatypes ((List!5619 0))(
  ( (Nil!5616) (Cons!5615 (h!6471 tuple2!5758) (t!10777 List!5619)) )
))
(declare-datatypes ((ListLongMap!4685 0))(
  ( (ListLongMap!4686 (toList!2358 List!5619)) )
))
(declare-fun lt!169479 () ListLongMap!4685)

(declare-fun minValue!472 () V!12589)

(declare-fun getCurrentListMapNoExtraKeys!626 (array!21153 array!21151 (_ BitVec 32) (_ BitVec 32) V!12589 V!12589 (_ BitVec 32) Int) ListLongMap!4685)

(assert (=> b!368171 (= lt!169479 (getCurrentListMapNoExtraKeys!626 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!368172 () Bool)

(assert (=> b!368172 (= e!225189 e!225191)))

(declare-fun res!206382 () Bool)

(assert (=> b!368172 (=> (not res!206382) (not e!225191))))

(assert (=> b!368172 (= res!206382 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169480 mask!970))))

(assert (=> b!368172 (= lt!169480 (array!21154 (store (arr!10042 _keys!658) i!548 k0!778) (size!10394 _keys!658)))))

(declare-fun b!368173 () Bool)

(declare-fun res!206383 () Bool)

(assert (=> b!368173 (=> (not res!206383) (not e!225189))))

(assert (=> b!368173 (= res!206383 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5615))))

(declare-fun b!368174 () Bool)

(declare-fun res!206380 () Bool)

(assert (=> b!368174 (=> (not res!206380) (not e!225189))))

(assert (=> b!368174 (= res!206380 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10394 _keys!658))))))

(assert (= (and start!36846 res!206375) b!368163))

(assert (= (and b!368163 res!206379) b!368168))

(assert (= (and b!368168 res!206377) b!368173))

(assert (= (and b!368173 res!206383) b!368174))

(assert (= (and b!368174 res!206380) b!368166))

(assert (= (and b!368166 res!206376) b!368164))

(assert (= (and b!368164 res!206381) b!368165))

(assert (= (and b!368165 res!206384) b!368172))

(assert (= (and b!368172 res!206382) b!368169))

(assert (= (and b!368169 res!206378) b!368171))

(assert (= (and b!368167 condMapEmpty!14484) mapIsEmpty!14484))

(assert (= (and b!368167 (not condMapEmpty!14484)) mapNonEmpty!14484))

(get-info :version)

(assert (= (and mapNonEmpty!14484 ((_ is ValueCellFull!3963) mapValue!14484)) b!368170))

(assert (= (and b!368167 ((_ is ValueCellFull!3963) mapDefault!14484)) b!368162))

(assert (= start!36846 b!368167))

(declare-fun m!364873 () Bool)

(assert (=> b!368165 m!364873))

(declare-fun m!364875 () Bool)

(assert (=> mapNonEmpty!14484 m!364875))

(declare-fun m!364877 () Bool)

(assert (=> b!368164 m!364877))

(declare-fun m!364879 () Bool)

(assert (=> start!36846 m!364879))

(declare-fun m!364881 () Bool)

(assert (=> start!36846 m!364881))

(declare-fun m!364883 () Bool)

(assert (=> start!36846 m!364883))

(declare-fun m!364885 () Bool)

(assert (=> b!368166 m!364885))

(declare-fun m!364887 () Bool)

(assert (=> b!368173 m!364887))

(declare-fun m!364889 () Bool)

(assert (=> b!368172 m!364889))

(declare-fun m!364891 () Bool)

(assert (=> b!368172 m!364891))

(declare-fun m!364893 () Bool)

(assert (=> b!368171 m!364893))

(declare-fun m!364895 () Bool)

(assert (=> b!368169 m!364895))

(declare-fun m!364897 () Bool)

(assert (=> b!368168 m!364897))

(check-sat (not b!368173) (not b!368166) (not b!368165) (not b!368169) b_and!15225 (not b!368171) (not b_next!7965) tp_is_empty!8613 (not b!368172) (not start!36846) (not b!368168) (not mapNonEmpty!14484))
(check-sat b_and!15225 (not b_next!7965))
