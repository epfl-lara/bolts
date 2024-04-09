; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20120 () Bool)

(assert start!20120)

(declare-fun b_free!4767 () Bool)

(declare-fun b_next!4767 () Bool)

(assert (=> start!20120 (= b_free!4767 (not b_next!4767))))

(declare-fun tp!17333 () Bool)

(declare-fun b_and!11531 () Bool)

(assert (=> start!20120 (= tp!17333 b_and!11531)))

(declare-fun b!197010 () Bool)

(declare-fun e!129714 () Bool)

(declare-fun e!129713 () Bool)

(declare-fun mapRes!8003 () Bool)

(assert (=> b!197010 (= e!129714 (and e!129713 mapRes!8003))))

(declare-fun condMapEmpty!8003 () Bool)

(declare-datatypes ((V!5811 0))(
  ( (V!5812 (val!2356 Int)) )
))
(declare-datatypes ((ValueCell!1968 0))(
  ( (ValueCellFull!1968 (v!4322 V!5811)) (EmptyCell!1968) )
))
(declare-datatypes ((array!8500 0))(
  ( (array!8501 (arr!4000 (Array (_ BitVec 32) ValueCell!1968)) (size!4325 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8500)

(declare-fun mapDefault!8003 () ValueCell!1968)

(assert (=> b!197010 (= condMapEmpty!8003 (= (arr!4000 _values!649) ((as const (Array (_ BitVec 32) ValueCell!1968)) mapDefault!8003)))))

(declare-fun b!197011 () Bool)

(declare-fun e!129711 () Bool)

(assert (=> b!197011 (= e!129711 false)))

(declare-datatypes ((tuple2!3582 0))(
  ( (tuple2!3583 (_1!1801 (_ BitVec 64)) (_2!1801 V!5811)) )
))
(declare-datatypes ((List!2518 0))(
  ( (Nil!2515) (Cons!2514 (h!3156 tuple2!3582) (t!7457 List!2518)) )
))
(declare-datatypes ((ListLongMap!2509 0))(
  ( (ListLongMap!2510 (toList!1270 List!2518)) )
))
(declare-fun lt!97702 () ListLongMap!2509)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!5811)

(declare-datatypes ((array!8502 0))(
  ( (array!8503 (arr!4001 (Array (_ BitVec 32) (_ BitVec 64))) (size!4326 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8502)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!5811)

(declare-fun getCurrentListMapNoExtraKeys!227 (array!8502 array!8500 (_ BitVec 32) (_ BitVec 32) V!5811 V!5811 (_ BitVec 32) Int) ListLongMap!2509)

(assert (=> b!197011 (= lt!97702 (getCurrentListMapNoExtraKeys!227 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun res!93114 () Bool)

(assert (=> start!20120 (=> (not res!93114) (not e!129711))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20120 (= res!93114 (validMask!0 mask!1149))))

(assert (=> start!20120 e!129711))

(declare-fun array_inv!2601 (array!8500) Bool)

(assert (=> start!20120 (and (array_inv!2601 _values!649) e!129714)))

(assert (=> start!20120 true))

(declare-fun tp_is_empty!4623 () Bool)

(assert (=> start!20120 tp_is_empty!4623))

(declare-fun array_inv!2602 (array!8502) Bool)

(assert (=> start!20120 (array_inv!2602 _keys!825)))

(assert (=> start!20120 tp!17333))

(declare-fun b!197012 () Bool)

(declare-fun e!129715 () Bool)

(assert (=> b!197012 (= e!129715 tp_is_empty!4623)))

(declare-fun b!197013 () Bool)

(assert (=> b!197013 (= e!129713 tp_is_empty!4623)))

(declare-fun b!197014 () Bool)

(declare-fun res!93116 () Bool)

(assert (=> b!197014 (=> (not res!93116) (not e!129711))))

(assert (=> b!197014 (= res!93116 (and (= (size!4325 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4326 _keys!825) (size!4325 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!197015 () Bool)

(declare-fun res!93117 () Bool)

(assert (=> b!197015 (=> (not res!93117) (not e!129711))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!197015 (= res!93117 (= (select (arr!4001 _keys!825) i!601) k0!843))))

(declare-fun b!197016 () Bool)

(declare-fun res!93118 () Bool)

(assert (=> b!197016 (=> (not res!93118) (not e!129711))))

(assert (=> b!197016 (= res!93118 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4326 _keys!825))))))

(declare-fun b!197017 () Bool)

(declare-fun res!93112 () Bool)

(assert (=> b!197017 (=> (not res!93112) (not e!129711))))

(declare-datatypes ((List!2519 0))(
  ( (Nil!2516) (Cons!2515 (h!3157 (_ BitVec 64)) (t!7458 List!2519)) )
))
(declare-fun arrayNoDuplicates!0 (array!8502 (_ BitVec 32) List!2519) Bool)

(assert (=> b!197017 (= res!93112 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2516))))

(declare-fun b!197018 () Bool)

(declare-fun res!93113 () Bool)

(assert (=> b!197018 (=> (not res!93113) (not e!129711))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8502 (_ BitVec 32)) Bool)

(assert (=> b!197018 (= res!93113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!197019 () Bool)

(declare-fun res!93115 () Bool)

(assert (=> b!197019 (=> (not res!93115) (not e!129711))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!197019 (= res!93115 (validKeyInArray!0 k0!843))))

(declare-fun mapNonEmpty!8003 () Bool)

(declare-fun tp!17332 () Bool)

(assert (=> mapNonEmpty!8003 (= mapRes!8003 (and tp!17332 e!129715))))

(declare-fun mapKey!8003 () (_ BitVec 32))

(declare-fun mapValue!8003 () ValueCell!1968)

(declare-fun mapRest!8003 () (Array (_ BitVec 32) ValueCell!1968))

(assert (=> mapNonEmpty!8003 (= (arr!4000 _values!649) (store mapRest!8003 mapKey!8003 mapValue!8003))))

(declare-fun mapIsEmpty!8003 () Bool)

(assert (=> mapIsEmpty!8003 mapRes!8003))

(assert (= (and start!20120 res!93114) b!197014))

(assert (= (and b!197014 res!93116) b!197018))

(assert (= (and b!197018 res!93113) b!197017))

(assert (= (and b!197017 res!93112) b!197016))

(assert (= (and b!197016 res!93118) b!197019))

(assert (= (and b!197019 res!93115) b!197015))

(assert (= (and b!197015 res!93117) b!197011))

(assert (= (and b!197010 condMapEmpty!8003) mapIsEmpty!8003))

(assert (= (and b!197010 (not condMapEmpty!8003)) mapNonEmpty!8003))

(get-info :version)

(assert (= (and mapNonEmpty!8003 ((_ is ValueCellFull!1968) mapValue!8003)) b!197012))

(assert (= (and b!197010 ((_ is ValueCellFull!1968) mapDefault!8003)) b!197013))

(assert (= start!20120 b!197010))

(declare-fun m!224067 () Bool)

(assert (=> b!197018 m!224067))

(declare-fun m!224069 () Bool)

(assert (=> b!197011 m!224069))

(declare-fun m!224071 () Bool)

(assert (=> b!197019 m!224071))

(declare-fun m!224073 () Bool)

(assert (=> b!197015 m!224073))

(declare-fun m!224075 () Bool)

(assert (=> mapNonEmpty!8003 m!224075))

(declare-fun m!224077 () Bool)

(assert (=> b!197017 m!224077))

(declare-fun m!224079 () Bool)

(assert (=> start!20120 m!224079))

(declare-fun m!224081 () Bool)

(assert (=> start!20120 m!224081))

(declare-fun m!224083 () Bool)

(assert (=> start!20120 m!224083))

(check-sat (not b!197017) (not start!20120) (not mapNonEmpty!8003) (not b!197019) (not b!197018) b_and!11531 tp_is_empty!4623 (not b_next!4767) (not b!197011))
(check-sat b_and!11531 (not b_next!4767))
