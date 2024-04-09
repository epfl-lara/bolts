; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20234 () Bool)

(assert start!20234)

(declare-fun b_free!4881 () Bool)

(declare-fun b_next!4881 () Bool)

(assert (=> start!20234 (= b_free!4881 (not b_next!4881))))

(declare-fun tp!17674 () Bool)

(declare-fun b_and!11645 () Bool)

(assert (=> start!20234 (= tp!17674 b_and!11645)))

(declare-fun b!198720 () Bool)

(declare-fun res!94313 () Bool)

(declare-fun e!130569 () Bool)

(assert (=> b!198720 (=> (not res!94313) (not e!130569))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!8714 0))(
  ( (array!8715 (arr!4107 (Array (_ BitVec 32) (_ BitVec 64))) (size!4432 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8714)

(assert (=> b!198720 (= res!94313 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4432 _keys!825))))))

(declare-fun res!94310 () Bool)

(assert (=> start!20234 (=> (not res!94310) (not e!130569))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20234 (= res!94310 (validMask!0 mask!1149))))

(assert (=> start!20234 e!130569))

(declare-datatypes ((V!5963 0))(
  ( (V!5964 (val!2413 Int)) )
))
(declare-datatypes ((ValueCell!2025 0))(
  ( (ValueCellFull!2025 (v!4379 V!5963)) (EmptyCell!2025) )
))
(declare-datatypes ((array!8716 0))(
  ( (array!8717 (arr!4108 (Array (_ BitVec 32) ValueCell!2025)) (size!4433 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8716)

(declare-fun e!130568 () Bool)

(declare-fun array_inv!2681 (array!8716) Bool)

(assert (=> start!20234 (and (array_inv!2681 _values!649) e!130568)))

(assert (=> start!20234 true))

(declare-fun tp_is_empty!4737 () Bool)

(assert (=> start!20234 tp_is_empty!4737))

(declare-fun array_inv!2682 (array!8714) Bool)

(assert (=> start!20234 (array_inv!2682 _keys!825)))

(assert (=> start!20234 tp!17674))

(declare-fun mapNonEmpty!8174 () Bool)

(declare-fun mapRes!8174 () Bool)

(declare-fun tp!17675 () Bool)

(declare-fun e!130567 () Bool)

(assert (=> mapNonEmpty!8174 (= mapRes!8174 (and tp!17675 e!130567))))

(declare-fun mapRest!8174 () (Array (_ BitVec 32) ValueCell!2025))

(declare-fun mapKey!8174 () (_ BitVec 32))

(declare-fun mapValue!8174 () ValueCell!2025)

(assert (=> mapNonEmpty!8174 (= (arr!4108 _values!649) (store mapRest!8174 mapKey!8174 mapValue!8174))))

(declare-fun b!198721 () Bool)

(declare-fun res!94311 () Bool)

(assert (=> b!198721 (=> (not res!94311) (not e!130569))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!198721 (= res!94311 (and (= (size!4433 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4432 _keys!825) (size!4433 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!198722 () Bool)

(assert (=> b!198722 (= e!130569 (not true))))

(declare-datatypes ((tuple2!3652 0))(
  ( (tuple2!3653 (_1!1836 (_ BitVec 64)) (_2!1836 V!5963)) )
))
(declare-datatypes ((List!2590 0))(
  ( (Nil!2587) (Cons!2586 (h!3228 tuple2!3652) (t!7529 List!2590)) )
))
(declare-datatypes ((ListLongMap!2579 0))(
  ( (ListLongMap!2580 (toList!1305 List!2590)) )
))
(declare-fun lt!98050 () ListLongMap!2579)

(declare-fun lt!98052 () ListLongMap!2579)

(assert (=> b!198722 (and (= lt!98050 lt!98052) (= lt!98052 lt!98050))))

(declare-fun v!520 () V!5963)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun lt!98053 () ListLongMap!2579)

(declare-fun +!322 (ListLongMap!2579 tuple2!3652) ListLongMap!2579)

(assert (=> b!198722 (= lt!98052 (+!322 lt!98053 (tuple2!3653 k0!843 v!520)))))

(declare-datatypes ((Unit!5953 0))(
  ( (Unit!5954) )
))
(declare-fun lt!98051 () Unit!5953)

(declare-fun zeroValue!615 () V!5963)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!5963)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!4 (array!8714 array!8716 (_ BitVec 32) (_ BitVec 32) V!5963 V!5963 (_ BitVec 32) (_ BitVec 64) V!5963 (_ BitVec 32) Int) Unit!5953)

(assert (=> b!198722 (= lt!98051 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!4 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!262 (array!8714 array!8716 (_ BitVec 32) (_ BitVec 32) V!5963 V!5963 (_ BitVec 32) Int) ListLongMap!2579)

(assert (=> b!198722 (= lt!98050 (getCurrentListMapNoExtraKeys!262 _keys!825 (array!8717 (store (arr!4108 _values!649) i!601 (ValueCellFull!2025 v!520)) (size!4433 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!198722 (= lt!98053 (getCurrentListMapNoExtraKeys!262 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!198723 () Bool)

(declare-fun res!94314 () Bool)

(assert (=> b!198723 (=> (not res!94314) (not e!130569))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8714 (_ BitVec 32)) Bool)

(assert (=> b!198723 (= res!94314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!198724 () Bool)

(declare-fun res!94315 () Bool)

(assert (=> b!198724 (=> (not res!94315) (not e!130569))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!198724 (= res!94315 (validKeyInArray!0 k0!843))))

(declare-fun b!198725 () Bool)

(declare-fun e!130566 () Bool)

(assert (=> b!198725 (= e!130566 tp_is_empty!4737)))

(declare-fun b!198726 () Bool)

(declare-fun res!94309 () Bool)

(assert (=> b!198726 (=> (not res!94309) (not e!130569))))

(declare-datatypes ((List!2591 0))(
  ( (Nil!2588) (Cons!2587 (h!3229 (_ BitVec 64)) (t!7530 List!2591)) )
))
(declare-fun arrayNoDuplicates!0 (array!8714 (_ BitVec 32) List!2591) Bool)

(assert (=> b!198726 (= res!94309 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2588))))

(declare-fun b!198727 () Bool)

(assert (=> b!198727 (= e!130567 tp_is_empty!4737)))

(declare-fun b!198728 () Bool)

(assert (=> b!198728 (= e!130568 (and e!130566 mapRes!8174))))

(declare-fun condMapEmpty!8174 () Bool)

(declare-fun mapDefault!8174 () ValueCell!2025)

(assert (=> b!198728 (= condMapEmpty!8174 (= (arr!4108 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2025)) mapDefault!8174)))))

(declare-fun b!198729 () Bool)

(declare-fun res!94312 () Bool)

(assert (=> b!198729 (=> (not res!94312) (not e!130569))))

(assert (=> b!198729 (= res!94312 (= (select (arr!4107 _keys!825) i!601) k0!843))))

(declare-fun mapIsEmpty!8174 () Bool)

(assert (=> mapIsEmpty!8174 mapRes!8174))

(assert (= (and start!20234 res!94310) b!198721))

(assert (= (and b!198721 res!94311) b!198723))

(assert (= (and b!198723 res!94314) b!198726))

(assert (= (and b!198726 res!94309) b!198720))

(assert (= (and b!198720 res!94313) b!198724))

(assert (= (and b!198724 res!94315) b!198729))

(assert (= (and b!198729 res!94312) b!198722))

(assert (= (and b!198728 condMapEmpty!8174) mapIsEmpty!8174))

(assert (= (and b!198728 (not condMapEmpty!8174)) mapNonEmpty!8174))

(get-info :version)

(assert (= (and mapNonEmpty!8174 ((_ is ValueCellFull!2025) mapValue!8174)) b!198727))

(assert (= (and b!198728 ((_ is ValueCellFull!2025) mapDefault!8174)) b!198725))

(assert (= start!20234 b!198728))

(declare-fun m!225293 () Bool)

(assert (=> b!198723 m!225293))

(declare-fun m!225295 () Bool)

(assert (=> start!20234 m!225295))

(declare-fun m!225297 () Bool)

(assert (=> start!20234 m!225297))

(declare-fun m!225299 () Bool)

(assert (=> start!20234 m!225299))

(declare-fun m!225301 () Bool)

(assert (=> b!198724 m!225301))

(declare-fun m!225303 () Bool)

(assert (=> b!198729 m!225303))

(declare-fun m!225305 () Bool)

(assert (=> mapNonEmpty!8174 m!225305))

(declare-fun m!225307 () Bool)

(assert (=> b!198722 m!225307))

(declare-fun m!225309 () Bool)

(assert (=> b!198722 m!225309))

(declare-fun m!225311 () Bool)

(assert (=> b!198722 m!225311))

(declare-fun m!225313 () Bool)

(assert (=> b!198722 m!225313))

(declare-fun m!225315 () Bool)

(assert (=> b!198722 m!225315))

(declare-fun m!225317 () Bool)

(assert (=> b!198726 m!225317))

(check-sat (not mapNonEmpty!8174) (not b!198723) tp_is_empty!4737 (not b!198726) (not start!20234) b_and!11645 (not b!198724) (not b_next!4881) (not b!198722))
(check-sat b_and!11645 (not b_next!4881))
