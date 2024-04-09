; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72856 () Bool)

(assert start!72856)

(declare-fun b!845009 () Bool)

(declare-fun e!471780 () Bool)

(declare-fun tp_is_empty!15879 () Bool)

(assert (=> b!845009 (= e!471780 tp_is_empty!15879)))

(declare-fun mapNonEmpty!25418 () Bool)

(declare-fun mapRes!25418 () Bool)

(declare-fun tp!48737 () Bool)

(declare-fun e!471777 () Bool)

(assert (=> mapNonEmpty!25418 (= mapRes!25418 (and tp!48737 e!471777))))

(declare-fun mapKey!25418 () (_ BitVec 32))

(declare-datatypes ((V!26219 0))(
  ( (V!26220 (val!7987 Int)) )
))
(declare-datatypes ((ValueCell!7500 0))(
  ( (ValueCellFull!7500 (v!10408 V!26219)) (EmptyCell!7500) )
))
(declare-fun mapRest!25418 () (Array (_ BitVec 32) ValueCell!7500))

(declare-fun mapValue!25418 () ValueCell!7500)

(declare-datatypes ((array!47962 0))(
  ( (array!47963 (arr!23008 (Array (_ BitVec 32) ValueCell!7500)) (size!23449 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47962)

(assert (=> mapNonEmpty!25418 (= (arr!23008 _values!688) (store mapRest!25418 mapKey!25418 mapValue!25418))))

(declare-fun b!845010 () Bool)

(assert (=> b!845010 (= e!471777 tp_is_empty!15879)))

(declare-fun b!845011 () Bool)

(declare-fun e!471776 () Bool)

(assert (=> b!845011 (= e!471776 false)))

(declare-fun lt!381330 () Bool)

(declare-datatypes ((array!47964 0))(
  ( (array!47965 (arr!23009 (Array (_ BitVec 32) (_ BitVec 64))) (size!23450 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47964)

(declare-datatypes ((List!16360 0))(
  ( (Nil!16357) (Cons!16356 (h!17487 (_ BitVec 64)) (t!22739 List!16360)) )
))
(declare-fun arrayNoDuplicates!0 (array!47964 (_ BitVec 32) List!16360) Bool)

(assert (=> b!845011 (= lt!381330 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16357))))

(declare-fun b!845012 () Bool)

(declare-fun e!471779 () Bool)

(assert (=> b!845012 (= e!471779 (and e!471780 mapRes!25418))))

(declare-fun condMapEmpty!25418 () Bool)

(declare-fun mapDefault!25418 () ValueCell!7500)

(assert (=> b!845012 (= condMapEmpty!25418 (= (arr!23008 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7500)) mapDefault!25418)))))

(declare-fun res!574155 () Bool)

(assert (=> start!72856 (=> (not res!574155) (not e!471776))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72856 (= res!574155 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23450 _keys!868))))))

(assert (=> start!72856 e!471776))

(assert (=> start!72856 true))

(declare-fun array_inv!18272 (array!47964) Bool)

(assert (=> start!72856 (array_inv!18272 _keys!868)))

(declare-fun array_inv!18273 (array!47962) Bool)

(assert (=> start!72856 (and (array_inv!18273 _values!688) e!471779)))

(declare-fun b!845013 () Bool)

(declare-fun res!574156 () Bool)

(assert (=> b!845013 (=> (not res!574156) (not e!471776))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!845013 (= res!574156 (and (= (size!23449 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23450 _keys!868) (size!23449 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!845014 () Bool)

(declare-fun res!574157 () Bool)

(assert (=> b!845014 (=> (not res!574157) (not e!471776))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!845014 (= res!574157 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!25418 () Bool)

(assert (=> mapIsEmpty!25418 mapRes!25418))

(declare-fun b!845015 () Bool)

(declare-fun res!574158 () Bool)

(assert (=> b!845015 (=> (not res!574158) (not e!471776))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47964 (_ BitVec 32)) Bool)

(assert (=> b!845015 (= res!574158 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(assert (= (and start!72856 res!574155) b!845014))

(assert (= (and b!845014 res!574157) b!845013))

(assert (= (and b!845013 res!574156) b!845015))

(assert (= (and b!845015 res!574158) b!845011))

(assert (= (and b!845012 condMapEmpty!25418) mapIsEmpty!25418))

(assert (= (and b!845012 (not condMapEmpty!25418)) mapNonEmpty!25418))

(get-info :version)

(assert (= (and mapNonEmpty!25418 ((_ is ValueCellFull!7500) mapValue!25418)) b!845010))

(assert (= (and b!845012 ((_ is ValueCellFull!7500) mapDefault!25418)) b!845009))

(assert (= start!72856 b!845012))

(declare-fun m!787061 () Bool)

(assert (=> b!845011 m!787061))

(declare-fun m!787063 () Bool)

(assert (=> b!845014 m!787063))

(declare-fun m!787065 () Bool)

(assert (=> start!72856 m!787065))

(declare-fun m!787067 () Bool)

(assert (=> start!72856 m!787067))

(declare-fun m!787069 () Bool)

(assert (=> mapNonEmpty!25418 m!787069))

(declare-fun m!787071 () Bool)

(assert (=> b!845015 m!787071))

(check-sat tp_is_empty!15879 (not start!72856) (not b!845014) (not b!845011) (not mapNonEmpty!25418) (not b!845015))
(check-sat)
