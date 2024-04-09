; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20762 () Bool)

(assert start!20762)

(declare-fun b_free!5409 () Bool)

(declare-fun b_next!5409 () Bool)

(assert (=> start!20762 (= b_free!5409 (not b_next!5409))))

(declare-fun tp!19258 () Bool)

(declare-fun b_and!12173 () Bool)

(assert (=> start!20762 (= tp!19258 b_and!12173)))

(declare-fun b!207702 () Bool)

(declare-fun res!100915 () Bool)

(declare-fun e!135562 () Bool)

(assert (=> b!207702 (=> (not res!100915) (not e!135562))))

(declare-datatypes ((array!9736 0))(
  ( (array!9737 (arr!4618 (Array (_ BitVec 32) (_ BitVec 64))) (size!4943 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9736)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9736 (_ BitVec 32)) Bool)

(assert (=> b!207702 (= res!100915 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapNonEmpty!8966 () Bool)

(declare-fun mapRes!8966 () Bool)

(declare-fun tp!19259 () Bool)

(declare-fun e!135563 () Bool)

(assert (=> mapNonEmpty!8966 (= mapRes!8966 (and tp!19259 e!135563))))

(declare-datatypes ((V!6667 0))(
  ( (V!6668 (val!2677 Int)) )
))
(declare-datatypes ((ValueCell!2289 0))(
  ( (ValueCellFull!2289 (v!4643 V!6667)) (EmptyCell!2289) )
))
(declare-fun mapRest!8966 () (Array (_ BitVec 32) ValueCell!2289))

(declare-fun mapValue!8966 () ValueCell!2289)

(declare-fun mapKey!8966 () (_ BitVec 32))

(declare-datatypes ((array!9738 0))(
  ( (array!9739 (arr!4619 (Array (_ BitVec 32) ValueCell!2289)) (size!4944 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9738)

(assert (=> mapNonEmpty!8966 (= (arr!4619 _values!649) (store mapRest!8966 mapKey!8966 mapValue!8966))))

(declare-fun b!207703 () Bool)

(declare-fun res!100920 () Bool)

(assert (=> b!207703 (=> (not res!100920) (not e!135562))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!207703 (= res!100920 (and (= (size!4944 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4943 _keys!825) (size!4944 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!207704 () Bool)

(declare-fun res!100917 () Bool)

(assert (=> b!207704 (=> (not res!100917) (not e!135562))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!207704 (= res!100917 (= (select (arr!4618 _keys!825) i!601) k0!843))))

(declare-fun b!207705 () Bool)

(declare-fun res!100918 () Bool)

(assert (=> b!207705 (=> (not res!100918) (not e!135562))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!207705 (= res!100918 (validKeyInArray!0 k0!843))))

(declare-fun b!207706 () Bool)

(declare-fun res!100916 () Bool)

(assert (=> b!207706 (=> (not res!100916) (not e!135562))))

(declare-datatypes ((List!2975 0))(
  ( (Nil!2972) (Cons!2971 (h!3613 (_ BitVec 64)) (t!7914 List!2975)) )
))
(declare-fun arrayNoDuplicates!0 (array!9736 (_ BitVec 32) List!2975) Bool)

(assert (=> b!207706 (= res!100916 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2972))))

(declare-fun b!207707 () Bool)

(declare-fun e!135564 () Bool)

(declare-fun tp_is_empty!5265 () Bool)

(assert (=> b!207707 (= e!135564 tp_is_empty!5265)))

(declare-fun b!207708 () Bool)

(assert (=> b!207708 (= e!135563 tp_is_empty!5265)))

(declare-fun b!207709 () Bool)

(declare-fun e!135561 () Bool)

(assert (=> b!207709 (= e!135561 (and e!135564 mapRes!8966))))

(declare-fun condMapEmpty!8966 () Bool)

(declare-fun mapDefault!8966 () ValueCell!2289)

(assert (=> b!207709 (= condMapEmpty!8966 (= (arr!4619 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2289)) mapDefault!8966)))))

(declare-fun b!207710 () Bool)

(declare-fun res!100919 () Bool)

(assert (=> b!207710 (=> (not res!100919) (not e!135562))))

(assert (=> b!207710 (= res!100919 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4943 _keys!825))))))

(declare-fun mapIsEmpty!8966 () Bool)

(assert (=> mapIsEmpty!8966 mapRes!8966))

(declare-fun res!100921 () Bool)

(assert (=> start!20762 (=> (not res!100921) (not e!135562))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20762 (= res!100921 (validMask!0 mask!1149))))

(assert (=> start!20762 e!135562))

(declare-fun array_inv!3051 (array!9738) Bool)

(assert (=> start!20762 (and (array_inv!3051 _values!649) e!135561)))

(assert (=> start!20762 true))

(assert (=> start!20762 tp_is_empty!5265))

(declare-fun array_inv!3052 (array!9736) Bool)

(assert (=> start!20762 (array_inv!3052 _keys!825)))

(assert (=> start!20762 tp!19258))

(declare-fun b!207711 () Bool)

(assert (=> b!207711 (= e!135562 (not true))))

(declare-fun zeroValue!615 () V!6667)

(declare-datatypes ((tuple2!4058 0))(
  ( (tuple2!4059 (_1!2039 (_ BitVec 64)) (_2!2039 V!6667)) )
))
(declare-datatypes ((List!2976 0))(
  ( (Nil!2973) (Cons!2972 (h!3614 tuple2!4058) (t!7915 List!2976)) )
))
(declare-datatypes ((ListLongMap!2985 0))(
  ( (ListLongMap!2986 (toList!1508 List!2976)) )
))
(declare-fun lt!106516 () ListLongMap!2985)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6667)

(declare-fun getCurrentListMap!1070 (array!9736 array!9738 (_ BitVec 32) (_ BitVec 32) V!6667 V!6667 (_ BitVec 32) Int) ListLongMap!2985)

(assert (=> b!207711 (= lt!106516 (getCurrentListMap!1070 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106519 () ListLongMap!2985)

(declare-fun lt!106522 () array!9738)

(assert (=> b!207711 (= lt!106519 (getCurrentListMap!1070 _keys!825 lt!106522 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106518 () ListLongMap!2985)

(declare-fun lt!106521 () ListLongMap!2985)

(assert (=> b!207711 (and (= lt!106518 lt!106521) (= lt!106521 lt!106518))))

(declare-fun v!520 () V!6667)

(declare-fun lt!106520 () ListLongMap!2985)

(declare-fun +!525 (ListLongMap!2985 tuple2!4058) ListLongMap!2985)

(assert (=> b!207711 (= lt!106521 (+!525 lt!106520 (tuple2!4059 k0!843 v!520)))))

(declare-datatypes ((Unit!6345 0))(
  ( (Unit!6346) )
))
(declare-fun lt!106517 () Unit!6345)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!183 (array!9736 array!9738 (_ BitVec 32) (_ BitVec 32) V!6667 V!6667 (_ BitVec 32) (_ BitVec 64) V!6667 (_ BitVec 32) Int) Unit!6345)

(assert (=> b!207711 (= lt!106517 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!183 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!441 (array!9736 array!9738 (_ BitVec 32) (_ BitVec 32) V!6667 V!6667 (_ BitVec 32) Int) ListLongMap!2985)

(assert (=> b!207711 (= lt!106518 (getCurrentListMapNoExtraKeys!441 _keys!825 lt!106522 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!207711 (= lt!106522 (array!9739 (store (arr!4619 _values!649) i!601 (ValueCellFull!2289 v!520)) (size!4944 _values!649)))))

(assert (=> b!207711 (= lt!106520 (getCurrentListMapNoExtraKeys!441 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (= (and start!20762 res!100921) b!207703))

(assert (= (and b!207703 res!100920) b!207702))

(assert (= (and b!207702 res!100915) b!207706))

(assert (= (and b!207706 res!100916) b!207710))

(assert (= (and b!207710 res!100919) b!207705))

(assert (= (and b!207705 res!100918) b!207704))

(assert (= (and b!207704 res!100917) b!207711))

(assert (= (and b!207709 condMapEmpty!8966) mapIsEmpty!8966))

(assert (= (and b!207709 (not condMapEmpty!8966)) mapNonEmpty!8966))

(get-info :version)

(assert (= (and mapNonEmpty!8966 ((_ is ValueCellFull!2289) mapValue!8966)) b!207708))

(assert (= (and b!207709 ((_ is ValueCellFull!2289) mapDefault!8966)) b!207707))

(assert (= start!20762 b!207709))

(declare-fun m!235467 () Bool)

(assert (=> mapNonEmpty!8966 m!235467))

(declare-fun m!235469 () Bool)

(assert (=> b!207704 m!235469))

(declare-fun m!235471 () Bool)

(assert (=> b!207702 m!235471))

(declare-fun m!235473 () Bool)

(assert (=> b!207706 m!235473))

(declare-fun m!235475 () Bool)

(assert (=> b!207705 m!235475))

(declare-fun m!235477 () Bool)

(assert (=> start!20762 m!235477))

(declare-fun m!235479 () Bool)

(assert (=> start!20762 m!235479))

(declare-fun m!235481 () Bool)

(assert (=> start!20762 m!235481))

(declare-fun m!235483 () Bool)

(assert (=> b!207711 m!235483))

(declare-fun m!235485 () Bool)

(assert (=> b!207711 m!235485))

(declare-fun m!235487 () Bool)

(assert (=> b!207711 m!235487))

(declare-fun m!235489 () Bool)

(assert (=> b!207711 m!235489))

(declare-fun m!235491 () Bool)

(assert (=> b!207711 m!235491))

(declare-fun m!235493 () Bool)

(assert (=> b!207711 m!235493))

(declare-fun m!235495 () Bool)

(assert (=> b!207711 m!235495))

(check-sat tp_is_empty!5265 (not mapNonEmpty!8966) (not start!20762) b_and!12173 (not b_next!5409) (not b!207706) (not b!207702) (not b!207705) (not b!207711))
(check-sat b_and!12173 (not b_next!5409))
