; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21224 () Bool)

(assert start!21224)

(declare-fun b_free!5643 () Bool)

(declare-fun b_next!5643 () Bool)

(assert (=> start!21224 (= b_free!5643 (not b_next!5643))))

(declare-fun tp!20003 () Bool)

(declare-fun b_and!12539 () Bool)

(assert (=> start!21224 (= tp!20003 b_and!12539)))

(declare-fun b!213660 () Bool)

(declare-fun res!104611 () Bool)

(declare-fun e!138951 () Bool)

(assert (=> b!213660 (=> (not res!104611) (not e!138951))))

(declare-datatypes ((array!10214 0))(
  ( (array!10215 (arr!4846 (Array (_ BitVec 32) (_ BitVec 64))) (size!5171 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10214)

(declare-datatypes ((List!3140 0))(
  ( (Nil!3137) (Cons!3136 (h!3778 (_ BitVec 64)) (t!8101 List!3140)) )
))
(declare-fun arrayNoDuplicates!0 (array!10214 (_ BitVec 32) List!3140) Bool)

(assert (=> b!213660 (= res!104611 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3137))))

(declare-fun b!213661 () Bool)

(declare-fun res!104610 () Bool)

(assert (=> b!213661 (=> (not res!104610) (not e!138951))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!213661 (= res!104610 (validKeyInArray!0 k0!843))))

(declare-fun b!213662 () Bool)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6987 0))(
  ( (V!6988 (val!2797 Int)) )
))
(declare-datatypes ((tuple2!4232 0))(
  ( (tuple2!4233 (_1!2126 (_ BitVec 64)) (_2!2126 V!6987)) )
))
(declare-datatypes ((List!3141 0))(
  ( (Nil!3138) (Cons!3137 (h!3779 tuple2!4232) (t!8102 List!3141)) )
))
(declare-datatypes ((ListLongMap!3159 0))(
  ( (ListLongMap!3160 (toList!1595 List!3141)) )
))
(declare-fun lt!110532 () ListLongMap!3159)

(declare-datatypes ((ValueCell!2409 0))(
  ( (ValueCellFull!2409 (v!4807 V!6987)) (EmptyCell!2409) )
))
(declare-datatypes ((array!10216 0))(
  ( (array!10217 (arr!4847 (Array (_ BitVec 32) ValueCell!2409)) (size!5172 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10216)

(declare-fun lt!110534 () Bool)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lt!110539 () ListLongMap!3159)

(assert (=> b!213662 (= e!138951 (not (or (and (not lt!110534) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!110534) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!110534) (not (= lt!110532 lt!110539)) (bvslt i!601 (size!5172 _values!649)))))))

(assert (=> b!213662 (= lt!110534 (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun zeroValue!615 () V!6987)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6987)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun lt!110536 () ListLongMap!3159)

(declare-fun getCurrentListMap!1118 (array!10214 array!10216 (_ BitVec 32) (_ BitVec 32) V!6987 V!6987 (_ BitVec 32) Int) ListLongMap!3159)

(assert (=> b!213662 (= lt!110536 (getCurrentListMap!1118 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110537 () array!10216)

(assert (=> b!213662 (= lt!110532 (getCurrentListMap!1118 _keys!825 lt!110537 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110535 () ListLongMap!3159)

(assert (=> b!213662 (and (= lt!110539 lt!110535) (= lt!110535 lt!110539))))

(declare-fun lt!110533 () ListLongMap!3159)

(declare-fun v!520 () V!6987)

(declare-fun +!588 (ListLongMap!3159 tuple2!4232) ListLongMap!3159)

(assert (=> b!213662 (= lt!110535 (+!588 lt!110533 (tuple2!4233 k0!843 v!520)))))

(declare-datatypes ((Unit!6477 0))(
  ( (Unit!6478) )
))
(declare-fun lt!110538 () Unit!6477)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!235 (array!10214 array!10216 (_ BitVec 32) (_ BitVec 32) V!6987 V!6987 (_ BitVec 32) (_ BitVec 64) V!6987 (_ BitVec 32) Int) Unit!6477)

(assert (=> b!213662 (= lt!110538 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!235 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!517 (array!10214 array!10216 (_ BitVec 32) (_ BitVec 32) V!6987 V!6987 (_ BitVec 32) Int) ListLongMap!3159)

(assert (=> b!213662 (= lt!110539 (getCurrentListMapNoExtraKeys!517 _keys!825 lt!110537 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!213662 (= lt!110537 (array!10217 (store (arr!4847 _values!649) i!601 (ValueCellFull!2409 v!520)) (size!5172 _values!649)))))

(assert (=> b!213662 (= lt!110533 (getCurrentListMapNoExtraKeys!517 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!213663 () Bool)

(declare-fun res!104605 () Bool)

(assert (=> b!213663 (=> (not res!104605) (not e!138951))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10214 (_ BitVec 32)) Bool)

(assert (=> b!213663 (= res!104605 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapIsEmpty!9359 () Bool)

(declare-fun mapRes!9359 () Bool)

(assert (=> mapIsEmpty!9359 mapRes!9359))

(declare-fun b!213664 () Bool)

(declare-fun res!104607 () Bool)

(assert (=> b!213664 (=> (not res!104607) (not e!138951))))

(assert (=> b!213664 (= res!104607 (= (select (arr!4846 _keys!825) i!601) k0!843))))

(declare-fun b!213665 () Bool)

(declare-fun e!138950 () Bool)

(declare-fun tp_is_empty!5505 () Bool)

(assert (=> b!213665 (= e!138950 tp_is_empty!5505)))

(declare-fun b!213666 () Bool)

(declare-fun e!138952 () Bool)

(assert (=> b!213666 (= e!138952 (and e!138950 mapRes!9359))))

(declare-fun condMapEmpty!9359 () Bool)

(declare-fun mapDefault!9359 () ValueCell!2409)

(assert (=> b!213666 (= condMapEmpty!9359 (= (arr!4847 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2409)) mapDefault!9359)))))

(declare-fun res!104608 () Bool)

(assert (=> start!21224 (=> (not res!104608) (not e!138951))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!21224 (= res!104608 (validMask!0 mask!1149))))

(assert (=> start!21224 e!138951))

(declare-fun array_inv!3195 (array!10216) Bool)

(assert (=> start!21224 (and (array_inv!3195 _values!649) e!138952)))

(assert (=> start!21224 true))

(assert (=> start!21224 tp_is_empty!5505))

(declare-fun array_inv!3196 (array!10214) Bool)

(assert (=> start!21224 (array_inv!3196 _keys!825)))

(assert (=> start!21224 tp!20003))

(declare-fun mapNonEmpty!9359 () Bool)

(declare-fun tp!20002 () Bool)

(declare-fun e!138949 () Bool)

(assert (=> mapNonEmpty!9359 (= mapRes!9359 (and tp!20002 e!138949))))

(declare-fun mapKey!9359 () (_ BitVec 32))

(declare-fun mapRest!9359 () (Array (_ BitVec 32) ValueCell!2409))

(declare-fun mapValue!9359 () ValueCell!2409)

(assert (=> mapNonEmpty!9359 (= (arr!4847 _values!649) (store mapRest!9359 mapKey!9359 mapValue!9359))))

(declare-fun b!213667 () Bool)

(declare-fun res!104606 () Bool)

(assert (=> b!213667 (=> (not res!104606) (not e!138951))))

(assert (=> b!213667 (= res!104606 (and (= (size!5172 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5171 _keys!825) (size!5172 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!213668 () Bool)

(declare-fun res!104609 () Bool)

(assert (=> b!213668 (=> (not res!104609) (not e!138951))))

(assert (=> b!213668 (= res!104609 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5171 _keys!825))))))

(declare-fun b!213669 () Bool)

(assert (=> b!213669 (= e!138949 tp_is_empty!5505)))

(assert (= (and start!21224 res!104608) b!213667))

(assert (= (and b!213667 res!104606) b!213663))

(assert (= (and b!213663 res!104605) b!213660))

(assert (= (and b!213660 res!104611) b!213668))

(assert (= (and b!213668 res!104609) b!213661))

(assert (= (and b!213661 res!104610) b!213664))

(assert (= (and b!213664 res!104607) b!213662))

(assert (= (and b!213666 condMapEmpty!9359) mapIsEmpty!9359))

(assert (= (and b!213666 (not condMapEmpty!9359)) mapNonEmpty!9359))

(get-info :version)

(assert (= (and mapNonEmpty!9359 ((_ is ValueCellFull!2409) mapValue!9359)) b!213669))

(assert (= (and b!213666 ((_ is ValueCellFull!2409) mapDefault!9359)) b!213665))

(assert (= start!21224 b!213666))

(declare-fun m!241551 () Bool)

(assert (=> b!213664 m!241551))

(declare-fun m!241553 () Bool)

(assert (=> b!213662 m!241553))

(declare-fun m!241555 () Bool)

(assert (=> b!213662 m!241555))

(declare-fun m!241557 () Bool)

(assert (=> b!213662 m!241557))

(declare-fun m!241559 () Bool)

(assert (=> b!213662 m!241559))

(declare-fun m!241561 () Bool)

(assert (=> b!213662 m!241561))

(declare-fun m!241563 () Bool)

(assert (=> b!213662 m!241563))

(declare-fun m!241565 () Bool)

(assert (=> b!213662 m!241565))

(declare-fun m!241567 () Bool)

(assert (=> b!213663 m!241567))

(declare-fun m!241569 () Bool)

(assert (=> b!213661 m!241569))

(declare-fun m!241571 () Bool)

(assert (=> b!213660 m!241571))

(declare-fun m!241573 () Bool)

(assert (=> mapNonEmpty!9359 m!241573))

(declare-fun m!241575 () Bool)

(assert (=> start!21224 m!241575))

(declare-fun m!241577 () Bool)

(assert (=> start!21224 m!241577))

(declare-fun m!241579 () Bool)

(assert (=> start!21224 m!241579))

(check-sat (not b!213662) (not start!21224) (not b!213660) tp_is_empty!5505 (not b!213663) b_and!12539 (not mapNonEmpty!9359) (not b_next!5643) (not b!213661))
(check-sat b_and!12539 (not b_next!5643))
