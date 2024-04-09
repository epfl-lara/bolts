; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113096 () Bool)

(assert start!113096)

(declare-fun b_free!31111 () Bool)

(declare-fun b_next!31111 () Bool)

(assert (=> start!113096 (= b_free!31111 (not b_next!31111))))

(declare-fun tp!109138 () Bool)

(declare-fun b_and!50151 () Bool)

(assert (=> start!113096 (= tp!109138 b_and!50151)))

(declare-fun b!1339951 () Bool)

(declare-fun e!763286 () Bool)

(assert (=> b!1339951 (= e!763286 false)))

(declare-datatypes ((V!54585 0))(
  ( (V!54586 (val!18630 Int)) )
))
(declare-fun minValue!1245 () V!54585)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91039 0))(
  ( (array!91040 (arr!43971 (Array (_ BitVec 32) (_ BitVec 64))) (size!44522 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91039)

(declare-fun zeroValue!1245 () V!54585)

(declare-fun lt!593893 () Bool)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17657 0))(
  ( (ValueCellFull!17657 (v!21276 V!54585)) (EmptyCell!17657) )
))
(declare-datatypes ((array!91041 0))(
  ( (array!91042 (arr!43972 (Array (_ BitVec 32) ValueCell!17657)) (size!44523 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91041)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24128 0))(
  ( (tuple2!24129 (_1!12074 (_ BitVec 64)) (_2!12074 V!54585)) )
))
(declare-datatypes ((List!31314 0))(
  ( (Nil!31311) (Cons!31310 (h!32519 tuple2!24128) (t!45653 List!31314)) )
))
(declare-datatypes ((ListLongMap!21797 0))(
  ( (ListLongMap!21798 (toList!10914 List!31314)) )
))
(declare-fun contains!9026 (ListLongMap!21797 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5818 (array!91039 array!91041 (_ BitVec 32) (_ BitVec 32) V!54585 V!54585 (_ BitVec 32) Int) ListLongMap!21797)

(assert (=> b!1339951 (= lt!593893 (contains!9026 (getCurrentListMap!5818 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun mapIsEmpty!57373 () Bool)

(declare-fun mapRes!57373 () Bool)

(assert (=> mapIsEmpty!57373 mapRes!57373))

(declare-fun b!1339952 () Bool)

(declare-fun res!888952 () Bool)

(assert (=> b!1339952 (=> (not res!888952) (not e!763286))))

(declare-datatypes ((List!31315 0))(
  ( (Nil!31312) (Cons!31311 (h!32520 (_ BitVec 64)) (t!45654 List!31315)) )
))
(declare-fun arrayNoDuplicates!0 (array!91039 (_ BitVec 32) List!31315) Bool)

(assert (=> b!1339952 (= res!888952 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31312))))

(declare-fun b!1339953 () Bool)

(declare-fun e!763284 () Bool)

(declare-fun tp_is_empty!37111 () Bool)

(assert (=> b!1339953 (= e!763284 tp_is_empty!37111)))

(declare-fun b!1339954 () Bool)

(declare-fun res!888954 () Bool)

(assert (=> b!1339954 (=> (not res!888954) (not e!763286))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91039 (_ BitVec 32)) Bool)

(assert (=> b!1339954 (= res!888954 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1339955 () Bool)

(declare-fun res!888953 () Bool)

(assert (=> b!1339955 (=> (not res!888953) (not e!763286))))

(assert (=> b!1339955 (= res!888953 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44522 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1339956 () Bool)

(declare-fun e!763283 () Bool)

(assert (=> b!1339956 (= e!763283 tp_is_empty!37111)))

(declare-fun res!888956 () Bool)

(assert (=> start!113096 (=> (not res!888956) (not e!763286))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113096 (= res!888956 (validMask!0 mask!1977))))

(assert (=> start!113096 e!763286))

(assert (=> start!113096 tp_is_empty!37111))

(assert (=> start!113096 true))

(declare-fun array_inv!33077 (array!91039) Bool)

(assert (=> start!113096 (array_inv!33077 _keys!1571)))

(declare-fun e!763285 () Bool)

(declare-fun array_inv!33078 (array!91041) Bool)

(assert (=> start!113096 (and (array_inv!33078 _values!1303) e!763285)))

(assert (=> start!113096 tp!109138))

(declare-fun b!1339957 () Bool)

(assert (=> b!1339957 (= e!763285 (and e!763284 mapRes!57373))))

(declare-fun condMapEmpty!57373 () Bool)

(declare-fun mapDefault!57373 () ValueCell!17657)

