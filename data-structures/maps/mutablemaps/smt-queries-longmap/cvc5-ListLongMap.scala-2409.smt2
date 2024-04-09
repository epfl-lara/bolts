; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38146 () Bool)

(assert start!38146)

(declare-fun b_free!9019 () Bool)

(declare-fun b_next!9019 () Bool)

(assert (=> start!38146 (= b_free!9019 (not b_next!9019))))

(declare-fun tp!31839 () Bool)

(declare-fun b_and!16399 () Bool)

(assert (=> start!38146 (= tp!31839 b_and!16399)))

(declare-fun b!392744 () Bool)

(declare-fun e!237836 () Bool)

(declare-fun tp_is_empty!9691 () Bool)

(assert (=> b!392744 (= e!237836 tp_is_empty!9691)))

(declare-fun b!392745 () Bool)

(declare-fun res!224993 () Bool)

(declare-fun e!237835 () Bool)

(assert (=> b!392745 (=> (not res!224993) (not e!237835))))

(declare-datatypes ((array!23263 0))(
  ( (array!23264 (arr!11087 (Array (_ BitVec 32) (_ BitVec 64))) (size!11439 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23263)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23263 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!392745 (= res!224993 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!392746 () Bool)

(declare-fun e!237838 () Bool)

(assert (=> b!392746 (= e!237835 e!237838)))

(declare-fun res!224994 () Bool)

(assert (=> b!392746 (=> (not res!224994) (not e!237838))))

(declare-fun lt!185753 () array!23263)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23263 (_ BitVec 32)) Bool)

(assert (=> b!392746 (= res!224994 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!185753 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!392746 (= lt!185753 (array!23264 (store (arr!11087 _keys!658) i!548 k!778) (size!11439 _keys!658)))))

(declare-fun b!392747 () Bool)

(declare-fun res!224995 () Bool)

(assert (=> b!392747 (=> (not res!224995) (not e!237835))))

(assert (=> b!392747 (= res!224995 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11439 _keys!658))))))

(declare-fun b!392748 () Bool)

(declare-fun e!237837 () Bool)

(assert (=> b!392748 (= e!237837 tp_is_empty!9691)))

(declare-fun mapNonEmpty!16131 () Bool)

(declare-fun mapRes!16131 () Bool)

(declare-fun tp!31838 () Bool)

(assert (=> mapNonEmpty!16131 (= mapRes!16131 (and tp!31838 e!237836))))

(declare-datatypes ((V!14027 0))(
  ( (V!14028 (val!4890 Int)) )
))
(declare-datatypes ((ValueCell!4502 0))(
  ( (ValueCellFull!4502 (v!7123 V!14027)) (EmptyCell!4502) )
))
(declare-fun mapRest!16131 () (Array (_ BitVec 32) ValueCell!4502))

(declare-fun mapKey!16131 () (_ BitVec 32))

(declare-datatypes ((array!23265 0))(
  ( (array!23266 (arr!11088 (Array (_ BitVec 32) ValueCell!4502)) (size!11440 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23265)

(declare-fun mapValue!16131 () ValueCell!4502)

(assert (=> mapNonEmpty!16131 (= (arr!11088 _values!506) (store mapRest!16131 mapKey!16131 mapValue!16131))))

(declare-fun b!392749 () Bool)

(declare-fun res!224992 () Bool)

(assert (=> b!392749 (=> (not res!224992) (not e!237835))))

(assert (=> b!392749 (= res!224992 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!392750 () Bool)

(declare-fun res!224986 () Bool)

(assert (=> b!392750 (=> (not res!224986) (not e!237835))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!392750 (= res!224986 (and (= (size!11440 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11439 _keys!658) (size!11440 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!392751 () Bool)

(declare-fun res!224997 () Bool)

(assert (=> b!392751 (=> (not res!224997) (not e!237835))))

(assert (=> b!392751 (= res!224997 (or (= (select (arr!11087 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11087 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!392752 () Bool)

(declare-fun e!237840 () Bool)

(assert (=> b!392752 (= e!237840 true)))

(declare-datatypes ((tuple2!6528 0))(
  ( (tuple2!6529 (_1!3274 (_ BitVec 64)) (_2!3274 V!14027)) )
))
(declare-datatypes ((List!6410 0))(
  ( (Nil!6407) (Cons!6406 (h!7262 tuple2!6528) (t!11588 List!6410)) )
))
(declare-datatypes ((ListLongMap!5455 0))(
  ( (ListLongMap!5456 (toList!2743 List!6410)) )
))
(declare-fun lt!185754 () ListLongMap!5455)

(declare-fun lt!185764 () ListLongMap!5455)

(declare-fun lt!185765 () tuple2!6528)

(declare-fun +!1041 (ListLongMap!5455 tuple2!6528) ListLongMap!5455)

(assert (=> b!392752 (= lt!185754 (+!1041 lt!185764 lt!185765))))

(declare-fun lt!185758 () ListLongMap!5455)

(declare-fun minValue!472 () V!14027)

(declare-datatypes ((Unit!11977 0))(
  ( (Unit!11978) )
))
(declare-fun lt!185759 () Unit!11977)

(declare-fun v!373 () V!14027)

(declare-fun addCommutativeForDiffKeys!338 (ListLongMap!5455 (_ BitVec 64) V!14027 (_ BitVec 64) V!14027) Unit!11977)

(assert (=> b!392752 (= lt!185759 (addCommutativeForDiffKeys!338 lt!185758 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!392754 () Bool)

(declare-fun e!237842 () Bool)

(assert (=> b!392754 (= e!237842 e!237840)))

(declare-fun res!224987 () Bool)

(assert (=> b!392754 (=> res!224987 e!237840)))

(assert (=> b!392754 (= res!224987 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!185762 () ListLongMap!5455)

(assert (=> b!392754 (= lt!185762 lt!185764)))

(declare-fun lt!185757 () tuple2!6528)

(assert (=> b!392754 (= lt!185764 (+!1041 lt!185758 lt!185757))))

(declare-fun lt!185755 () ListLongMap!5455)

(assert (=> b!392754 (= lt!185755 lt!185754)))

(declare-fun lt!185761 () ListLongMap!5455)

(assert (=> b!392754 (= lt!185754 (+!1041 lt!185761 lt!185757))))

(declare-fun lt!185760 () ListLongMap!5455)

(assert (=> b!392754 (= lt!185755 (+!1041 lt!185760 lt!185757))))

(assert (=> b!392754 (= lt!185757 (tuple2!6529 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!392755 () Bool)

(declare-fun res!224991 () Bool)

(assert (=> b!392755 (=> (not res!224991) (not e!237835))))

(declare-datatypes ((List!6411 0))(
  ( (Nil!6408) (Cons!6407 (h!7263 (_ BitVec 64)) (t!11589 List!6411)) )
))
(declare-fun arrayNoDuplicates!0 (array!23263 (_ BitVec 32) List!6411) Bool)

(assert (=> b!392755 (= res!224991 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6408))))

(declare-fun b!392756 () Bool)

(declare-fun res!224990 () Bool)

(assert (=> b!392756 (=> (not res!224990) (not e!237838))))

(assert (=> b!392756 (= res!224990 (arrayNoDuplicates!0 lt!185753 #b00000000000000000000000000000000 Nil!6408))))

(declare-fun mapIsEmpty!16131 () Bool)

(assert (=> mapIsEmpty!16131 mapRes!16131))

(declare-fun b!392757 () Bool)

(declare-fun e!237841 () Bool)

(assert (=> b!392757 (= e!237841 (and e!237837 mapRes!16131))))

(declare-fun condMapEmpty!16131 () Bool)

(declare-fun mapDefault!16131 () ValueCell!4502)

