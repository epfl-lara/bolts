; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20192 () Bool)

(assert start!20192)

(declare-fun b_free!4839 () Bool)

(declare-fun b_next!4839 () Bool)

(assert (=> start!20192 (= b_free!4839 (not b_next!4839))))

(declare-fun tp!17549 () Bool)

(declare-fun b_and!11603 () Bool)

(assert (=> start!20192 (= tp!17549 b_and!11603)))

(declare-fun mapIsEmpty!8111 () Bool)

(declare-fun mapRes!8111 () Bool)

(assert (=> mapIsEmpty!8111 mapRes!8111))

(declare-fun mapNonEmpty!8111 () Bool)

(declare-fun tp!17548 () Bool)

(declare-fun e!130255 () Bool)

(assert (=> mapNonEmpty!8111 (= mapRes!8111 (and tp!17548 e!130255))))

(declare-fun mapKey!8111 () (_ BitVec 32))

(declare-datatypes ((V!5907 0))(
  ( (V!5908 (val!2392 Int)) )
))
(declare-datatypes ((ValueCell!2004 0))(
  ( (ValueCellFull!2004 (v!4358 V!5907)) (EmptyCell!2004) )
))
(declare-fun mapRest!8111 () (Array (_ BitVec 32) ValueCell!2004))

(declare-datatypes ((array!8638 0))(
  ( (array!8639 (arr!4069 (Array (_ BitVec 32) ValueCell!2004)) (size!4394 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8638)

(declare-fun mapValue!8111 () ValueCell!2004)

(assert (=> mapNonEmpty!8111 (= (arr!4069 _values!649) (store mapRest!8111 mapKey!8111 mapValue!8111))))

(declare-fun b!198090 () Bool)

(declare-fun res!93871 () Bool)

(declare-fun e!130254 () Bool)

(assert (=> b!198090 (=> (not res!93871) (not e!130254))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!198090 (= res!93871 (validKeyInArray!0 k0!843))))

(declare-fun b!198091 () Bool)

(declare-fun res!93868 () Bool)

(assert (=> b!198091 (=> (not res!93868) (not e!130254))))

(declare-datatypes ((array!8640 0))(
  ( (array!8641 (arr!4070 (Array (_ BitVec 32) (_ BitVec 64))) (size!4395 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8640)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!198091 (= res!93868 (and (= (size!4394 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4395 _keys!825) (size!4394 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!198092 () Bool)

(declare-fun e!130251 () Bool)

(declare-fun tp_is_empty!4695 () Bool)

(assert (=> b!198092 (= e!130251 tp_is_empty!4695)))

(declare-fun res!93874 () Bool)

(assert (=> start!20192 (=> (not res!93874) (not e!130254))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20192 (= res!93874 (validMask!0 mask!1149))))

(assert (=> start!20192 e!130254))

(declare-fun e!130252 () Bool)

(declare-fun array_inv!2651 (array!8638) Bool)

(assert (=> start!20192 (and (array_inv!2651 _values!649) e!130252)))

(assert (=> start!20192 true))

(assert (=> start!20192 tp_is_empty!4695))

(declare-fun array_inv!2652 (array!8640) Bool)

(assert (=> start!20192 (array_inv!2652 _keys!825)))

(assert (=> start!20192 tp!17549))

(declare-fun b!198093 () Bool)

(declare-fun res!93870 () Bool)

(assert (=> b!198093 (=> (not res!93870) (not e!130254))))

(declare-datatypes ((List!2562 0))(
  ( (Nil!2559) (Cons!2558 (h!3200 (_ BitVec 64)) (t!7501 List!2562)) )
))
(declare-fun arrayNoDuplicates!0 (array!8640 (_ BitVec 32) List!2562) Bool)

(assert (=> b!198093 (= res!93870 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2559))))

(declare-fun b!198094 () Bool)

(assert (=> b!198094 (= e!130255 tp_is_empty!4695)))

(declare-fun b!198095 () Bool)

(assert (=> b!198095 (= e!130252 (and e!130251 mapRes!8111))))

(declare-fun condMapEmpty!8111 () Bool)

(declare-fun mapDefault!8111 () ValueCell!2004)

(assert (=> b!198095 (= condMapEmpty!8111 (= (arr!4069 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2004)) mapDefault!8111)))))

(declare-fun b!198096 () Bool)

(declare-fun res!93872 () Bool)

(assert (=> b!198096 (=> (not res!93872) (not e!130254))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8640 (_ BitVec 32)) Bool)

(assert (=> b!198096 (= res!93872 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!198097 () Bool)

(declare-fun res!93873 () Bool)

(assert (=> b!198097 (=> (not res!93873) (not e!130254))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!198097 (= res!93873 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4395 _keys!825))))))

(declare-fun b!198098 () Bool)

(declare-fun res!93869 () Bool)

(assert (=> b!198098 (=> (not res!93869) (not e!130254))))

(assert (=> b!198098 (= res!93869 (= (select (arr!4070 _keys!825) i!601) k0!843))))

(declare-fun b!198099 () Bool)

(assert (=> b!198099 (= e!130254 false)))

(declare-datatypes ((tuple2!3622 0))(
  ( (tuple2!3623 (_1!1821 (_ BitVec 64)) (_2!1821 V!5907)) )
))
(declare-datatypes ((List!2563 0))(
  ( (Nil!2560) (Cons!2559 (h!3201 tuple2!3622) (t!7502 List!2563)) )
))
(declare-datatypes ((ListLongMap!2549 0))(
  ( (ListLongMap!2550 (toList!1290 List!2563)) )
))
(declare-fun lt!97879 () ListLongMap!2549)

(declare-fun v!520 () V!5907)

(declare-fun zeroValue!615 () V!5907)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!5907)

(declare-fun getCurrentListMapNoExtraKeys!247 (array!8640 array!8638 (_ BitVec 32) (_ BitVec 32) V!5907 V!5907 (_ BitVec 32) Int) ListLongMap!2549)

(assert (=> b!198099 (= lt!97879 (getCurrentListMapNoExtraKeys!247 _keys!825 (array!8639 (store (arr!4069 _values!649) i!601 (ValueCellFull!2004 v!520)) (size!4394 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!97878 () ListLongMap!2549)

(assert (=> b!198099 (= lt!97878 (getCurrentListMapNoExtraKeys!247 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (= (and start!20192 res!93874) b!198091))

(assert (= (and b!198091 res!93868) b!198096))

(assert (= (and b!198096 res!93872) b!198093))

(assert (= (and b!198093 res!93870) b!198097))

(assert (= (and b!198097 res!93873) b!198090))

(assert (= (and b!198090 res!93871) b!198098))

(assert (= (and b!198098 res!93869) b!198099))

(assert (= (and b!198095 condMapEmpty!8111) mapIsEmpty!8111))

(assert (= (and b!198095 (not condMapEmpty!8111)) mapNonEmpty!8111))

(get-info :version)

(assert (= (and mapNonEmpty!8111 ((_ is ValueCellFull!2004) mapValue!8111)) b!198094))

(assert (= (and b!198095 ((_ is ValueCellFull!2004) mapDefault!8111)) b!198092))

(assert (= start!20192 b!198095))

(declare-fun m!224803 () Bool)

(assert (=> b!198096 m!224803))

(declare-fun m!224805 () Bool)

(assert (=> start!20192 m!224805))

(declare-fun m!224807 () Bool)

(assert (=> start!20192 m!224807))

(declare-fun m!224809 () Bool)

(assert (=> start!20192 m!224809))

(declare-fun m!224811 () Bool)

(assert (=> mapNonEmpty!8111 m!224811))

(declare-fun m!224813 () Bool)

(assert (=> b!198090 m!224813))

(declare-fun m!224815 () Bool)

(assert (=> b!198093 m!224815))

(declare-fun m!224817 () Bool)

(assert (=> b!198098 m!224817))

(declare-fun m!224819 () Bool)

(assert (=> b!198099 m!224819))

(declare-fun m!224821 () Bool)

(assert (=> b!198099 m!224821))

(declare-fun m!224823 () Bool)

(assert (=> b!198099 m!224823))

(check-sat (not b!198090) (not b_next!4839) b_and!11603 (not b!198093) (not b!198099) (not mapNonEmpty!8111) (not start!20192) tp_is_empty!4695 (not b!198096))
(check-sat b_and!11603 (not b_next!4839))
