; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113078 () Bool)

(assert start!113078)

(declare-fun b_free!31093 () Bool)

(declare-fun b_next!31093 () Bool)

(assert (=> start!113078 (= b_free!31093 (not b_next!31093))))

(declare-fun tp!109084 () Bool)

(declare-fun b_and!50133 () Bool)

(assert (=> start!113078 (= tp!109084 b_and!50133)))

(declare-fun res!888818 () Bool)

(declare-fun e!763151 () Bool)

(assert (=> start!113078 (=> (not res!888818) (not e!763151))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113078 (= res!888818 (validMask!0 mask!1977))))

(assert (=> start!113078 e!763151))

(declare-fun tp_is_empty!37093 () Bool)

(assert (=> start!113078 tp_is_empty!37093))

(assert (=> start!113078 true))

(declare-datatypes ((array!91003 0))(
  ( (array!91004 (arr!43953 (Array (_ BitVec 32) (_ BitVec 64))) (size!44504 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91003)

(declare-fun array_inv!33067 (array!91003) Bool)

(assert (=> start!113078 (array_inv!33067 _keys!1571)))

(declare-datatypes ((V!54561 0))(
  ( (V!54562 (val!18621 Int)) )
))
(declare-datatypes ((ValueCell!17648 0))(
  ( (ValueCellFull!17648 (v!21267 V!54561)) (EmptyCell!17648) )
))
(declare-datatypes ((array!91005 0))(
  ( (array!91006 (arr!43954 (Array (_ BitVec 32) ValueCell!17648)) (size!44505 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91005)

(declare-fun e!763147 () Bool)

(declare-fun array_inv!33068 (array!91005) Bool)

(assert (=> start!113078 (and (array_inv!33068 _values!1303) e!763147)))

(assert (=> start!113078 tp!109084))

(declare-fun b!1339735 () Bool)

(declare-fun res!888821 () Bool)

(assert (=> b!1339735 (=> (not res!888821) (not e!763151))))

(declare-datatypes ((List!31301 0))(
  ( (Nil!31298) (Cons!31297 (h!32506 (_ BitVec 64)) (t!45640 List!31301)) )
))
(declare-fun arrayNoDuplicates!0 (array!91003 (_ BitVec 32) List!31301) Bool)

(assert (=> b!1339735 (= res!888821 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31298))))

(declare-fun b!1339736 () Bool)

(declare-fun res!888820 () Bool)

(assert (=> b!1339736 (=> (not res!888820) (not e!763151))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91003 (_ BitVec 32)) Bool)

(assert (=> b!1339736 (= res!888820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapIsEmpty!57346 () Bool)

(declare-fun mapRes!57346 () Bool)

(assert (=> mapIsEmpty!57346 mapRes!57346))

(declare-fun b!1339737 () Bool)

(assert (=> b!1339737 (= e!763151 false)))

(declare-fun minValue!1245 () V!54561)

(declare-fun zeroValue!1245 () V!54561)

(declare-fun lt!593866 () Bool)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24114 0))(
  ( (tuple2!24115 (_1!12067 (_ BitVec 64)) (_2!12067 V!54561)) )
))
(declare-datatypes ((List!31302 0))(
  ( (Nil!31299) (Cons!31298 (h!32507 tuple2!24114) (t!45641 List!31302)) )
))
(declare-datatypes ((ListLongMap!21783 0))(
  ( (ListLongMap!21784 (toList!10907 List!31302)) )
))
(declare-fun contains!9019 (ListLongMap!21783 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5811 (array!91003 array!91005 (_ BitVec 32) (_ BitVec 32) V!54561 V!54561 (_ BitVec 32) Int) ListLongMap!21783)

(assert (=> b!1339737 (= lt!593866 (contains!9019 (getCurrentListMap!5811 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1339738 () Bool)

(declare-fun e!763149 () Bool)

(assert (=> b!1339738 (= e!763149 tp_is_empty!37093)))

(declare-fun b!1339739 () Bool)

(declare-fun res!888817 () Bool)

(assert (=> b!1339739 (=> (not res!888817) (not e!763151))))

(assert (=> b!1339739 (= res!888817 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44504 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1339740 () Bool)

(declare-fun e!763150 () Bool)

(assert (=> b!1339740 (= e!763150 tp_is_empty!37093)))

(declare-fun mapNonEmpty!57346 () Bool)

(declare-fun tp!109085 () Bool)

(assert (=> mapNonEmpty!57346 (= mapRes!57346 (and tp!109085 e!763149))))

(declare-fun mapKey!57346 () (_ BitVec 32))

(declare-fun mapRest!57346 () (Array (_ BitVec 32) ValueCell!17648))

(declare-fun mapValue!57346 () ValueCell!17648)

(assert (=> mapNonEmpty!57346 (= (arr!43954 _values!1303) (store mapRest!57346 mapKey!57346 mapValue!57346))))

(declare-fun b!1339741 () Bool)

(assert (=> b!1339741 (= e!763147 (and e!763150 mapRes!57346))))

(declare-fun condMapEmpty!57346 () Bool)

(declare-fun mapDefault!57346 () ValueCell!17648)

