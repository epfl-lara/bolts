; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20174 () Bool)

(assert start!20174)

(declare-fun b_free!4821 () Bool)

(declare-fun b_next!4821 () Bool)

(assert (=> start!20174 (= b_free!4821 (not b_next!4821))))

(declare-fun tp!17495 () Bool)

(declare-fun b_and!11585 () Bool)

(assert (=> start!20174 (= tp!17495 b_and!11585)))

(declare-fun b!197820 () Bool)

(declare-fun res!93684 () Bool)

(declare-fun e!130119 () Bool)

(assert (=> b!197820 (=> (not res!93684) (not e!130119))))

(declare-datatypes ((array!8606 0))(
  ( (array!8607 (arr!4053 (Array (_ BitVec 32) (_ BitVec 64))) (size!4378 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8606)

(declare-datatypes ((List!2551 0))(
  ( (Nil!2548) (Cons!2547 (h!3189 (_ BitVec 64)) (t!7490 List!2551)) )
))
(declare-fun arrayNoDuplicates!0 (array!8606 (_ BitVec 32) List!2551) Bool)

(assert (=> b!197820 (= res!93684 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2548))))

(declare-fun b!197821 () Bool)

(declare-fun res!93682 () Bool)

(assert (=> b!197821 (=> (not res!93682) (not e!130119))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!197821 (= res!93682 (= (select (arr!4053 _keys!825) i!601) k0!843))))

(declare-fun b!197822 () Bool)

(declare-fun res!93679 () Bool)

(assert (=> b!197822 (=> (not res!93679) (not e!130119))))

(assert (=> b!197822 (= res!93679 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4378 _keys!825))))))

(declare-fun b!197823 () Bool)

(declare-fun e!130118 () Bool)

(declare-fun tp_is_empty!4677 () Bool)

(assert (=> b!197823 (= e!130118 tp_is_empty!4677)))

(declare-fun b!197824 () Bool)

(declare-fun e!130120 () Bool)

(assert (=> b!197824 (= e!130120 tp_is_empty!4677)))

(declare-fun b!197825 () Bool)

(declare-fun e!130116 () Bool)

(declare-fun mapRes!8084 () Bool)

(assert (=> b!197825 (= e!130116 (and e!130120 mapRes!8084))))

(declare-fun condMapEmpty!8084 () Bool)

(declare-datatypes ((V!5883 0))(
  ( (V!5884 (val!2383 Int)) )
))
(declare-datatypes ((ValueCell!1995 0))(
  ( (ValueCellFull!1995 (v!4349 V!5883)) (EmptyCell!1995) )
))
(declare-datatypes ((array!8608 0))(
  ( (array!8609 (arr!4054 (Array (_ BitVec 32) ValueCell!1995)) (size!4379 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8608)

(declare-fun mapDefault!8084 () ValueCell!1995)

(assert (=> b!197825 (= condMapEmpty!8084 (= (arr!4054 _values!649) ((as const (Array (_ BitVec 32) ValueCell!1995)) mapDefault!8084)))))

(declare-fun b!197826 () Bool)

(declare-fun res!93685 () Bool)

(assert (=> b!197826 (=> (not res!93685) (not e!130119))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!197826 (= res!93685 (validKeyInArray!0 k0!843))))

(declare-fun mapIsEmpty!8084 () Bool)

(assert (=> mapIsEmpty!8084 mapRes!8084))

(declare-fun b!197827 () Bool)

(declare-fun res!93683 () Bool)

(assert (=> b!197827 (=> (not res!93683) (not e!130119))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8606 (_ BitVec 32)) Bool)

(assert (=> b!197827 (= res!93683 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!197828 () Bool)

(declare-fun res!93680 () Bool)

(assert (=> b!197828 (=> (not res!93680) (not e!130119))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!197828 (= res!93680 (and (= (size!4379 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4378 _keys!825) (size!4379 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!8084 () Bool)

(declare-fun tp!17494 () Bool)

(assert (=> mapNonEmpty!8084 (= mapRes!8084 (and tp!17494 e!130118))))

(declare-fun mapValue!8084 () ValueCell!1995)

(declare-fun mapRest!8084 () (Array (_ BitVec 32) ValueCell!1995))

(declare-fun mapKey!8084 () (_ BitVec 32))

(assert (=> mapNonEmpty!8084 (= (arr!4054 _values!649) (store mapRest!8084 mapKey!8084 mapValue!8084))))

(declare-fun b!197829 () Bool)

(assert (=> b!197829 (= e!130119 false)))

(declare-fun v!520 () V!5883)

(declare-fun zeroValue!615 () V!5883)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!5883)

(declare-datatypes ((tuple2!3614 0))(
  ( (tuple2!3615 (_1!1817 (_ BitVec 64)) (_2!1817 V!5883)) )
))
(declare-datatypes ((List!2552 0))(
  ( (Nil!2549) (Cons!2548 (h!3190 tuple2!3614) (t!7491 List!2552)) )
))
(declare-datatypes ((ListLongMap!2541 0))(
  ( (ListLongMap!2542 (toList!1286 List!2552)) )
))
(declare-fun lt!97825 () ListLongMap!2541)

(declare-fun getCurrentListMapNoExtraKeys!243 (array!8606 array!8608 (_ BitVec 32) (_ BitVec 32) V!5883 V!5883 (_ BitVec 32) Int) ListLongMap!2541)

(assert (=> b!197829 (= lt!97825 (getCurrentListMapNoExtraKeys!243 _keys!825 (array!8609 (store (arr!4054 _values!649) i!601 (ValueCellFull!1995 v!520)) (size!4379 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!97824 () ListLongMap!2541)

(assert (=> b!197829 (= lt!97824 (getCurrentListMapNoExtraKeys!243 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun res!93681 () Bool)

(assert (=> start!20174 (=> (not res!93681) (not e!130119))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20174 (= res!93681 (validMask!0 mask!1149))))

(assert (=> start!20174 e!130119))

(declare-fun array_inv!2639 (array!8608) Bool)

(assert (=> start!20174 (and (array_inv!2639 _values!649) e!130116)))

(assert (=> start!20174 true))

(assert (=> start!20174 tp_is_empty!4677))

(declare-fun array_inv!2640 (array!8606) Bool)

(assert (=> start!20174 (array_inv!2640 _keys!825)))

(assert (=> start!20174 tp!17495))

(assert (= (and start!20174 res!93681) b!197828))

(assert (= (and b!197828 res!93680) b!197827))

(assert (= (and b!197827 res!93683) b!197820))

(assert (= (and b!197820 res!93684) b!197822))

(assert (= (and b!197822 res!93679) b!197826))

(assert (= (and b!197826 res!93685) b!197821))

(assert (= (and b!197821 res!93682) b!197829))

(assert (= (and b!197825 condMapEmpty!8084) mapIsEmpty!8084))

(assert (= (and b!197825 (not condMapEmpty!8084)) mapNonEmpty!8084))

(get-info :version)

(assert (= (and mapNonEmpty!8084 ((_ is ValueCellFull!1995) mapValue!8084)) b!197823))

(assert (= (and b!197825 ((_ is ValueCellFull!1995) mapDefault!8084)) b!197824))

(assert (= start!20174 b!197825))

(declare-fun m!224605 () Bool)

(assert (=> b!197826 m!224605))

(declare-fun m!224607 () Bool)

(assert (=> b!197821 m!224607))

(declare-fun m!224609 () Bool)

(assert (=> mapNonEmpty!8084 m!224609))

(declare-fun m!224611 () Bool)

(assert (=> b!197827 m!224611))

(declare-fun m!224613 () Bool)

(assert (=> b!197829 m!224613))

(declare-fun m!224615 () Bool)

(assert (=> b!197829 m!224615))

(declare-fun m!224617 () Bool)

(assert (=> b!197829 m!224617))

(declare-fun m!224619 () Bool)

(assert (=> b!197820 m!224619))

(declare-fun m!224621 () Bool)

(assert (=> start!20174 m!224621))

(declare-fun m!224623 () Bool)

(assert (=> start!20174 m!224623))

(declare-fun m!224625 () Bool)

(assert (=> start!20174 m!224625))

(check-sat (not b!197827) (not b!197829) b_and!11585 tp_is_empty!4677 (not b!197826) (not mapNonEmpty!8084) (not b!197820) (not start!20174) (not b_next!4821))
(check-sat b_and!11585 (not b_next!4821))
