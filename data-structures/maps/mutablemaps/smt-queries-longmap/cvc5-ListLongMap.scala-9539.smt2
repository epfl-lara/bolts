; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113132 () Bool)

(assert start!113132)

(declare-fun b_free!31147 () Bool)

(declare-fun b_next!31147 () Bool)

(assert (=> start!113132 (= b_free!31147 (not b_next!31147))))

(declare-fun tp!109247 () Bool)

(declare-fun b_and!50211 () Bool)

(assert (=> start!113132 (= tp!109247 b_and!50211)))

(declare-fun b!1340586 () Bool)

(declare-fun res!889406 () Bool)

(declare-fun e!763556 () Bool)

(assert (=> b!1340586 (=> (not res!889406) (not e!763556))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!91103 0))(
  ( (array!91104 (arr!44003 (Array (_ BitVec 32) (_ BitVec 64))) (size!44554 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91103)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1340586 (= res!889406 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44554 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1340587 () Bool)

(declare-fun e!763555 () Bool)

(declare-fun tp_is_empty!37147 () Bool)

(assert (=> b!1340587 (= e!763555 tp_is_empty!37147)))

(declare-fun b!1340588 () Bool)

(declare-fun res!889404 () Bool)

(assert (=> b!1340588 (=> (not res!889404) (not e!763556))))

(assert (=> b!1340588 (= res!889404 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1340589 () Bool)

(declare-fun res!889405 () Bool)

(assert (=> b!1340589 (=> (not res!889405) (not e!763556))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91103 (_ BitVec 32)) Bool)

(assert (=> b!1340589 (= res!889405 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1340590 () Bool)

(declare-fun e!763552 () Bool)

(assert (=> b!1340590 (= e!763552 tp_is_empty!37147)))

(declare-fun b!1340592 () Bool)

(declare-fun res!889401 () Bool)

(assert (=> b!1340592 (=> (not res!889401) (not e!763556))))

(declare-datatypes ((List!31334 0))(
  ( (Nil!31331) (Cons!31330 (h!32539 (_ BitVec 64)) (t!45699 List!31334)) )
))
(declare-fun arrayNoDuplicates!0 (array!91103 (_ BitVec 32) List!31334) Bool)

(assert (=> b!1340592 (= res!889401 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31331))))

(declare-fun b!1340593 () Bool)

(declare-fun res!889407 () Bool)

(assert (=> b!1340593 (=> (not res!889407) (not e!763556))))

(declare-datatypes ((V!54633 0))(
  ( (V!54634 (val!18648 Int)) )
))
(declare-fun minValue!1245 () V!54633)

(declare-fun zeroValue!1245 () V!54633)

(declare-datatypes ((ValueCell!17675 0))(
  ( (ValueCellFull!17675 (v!21294 V!54633)) (EmptyCell!17675) )
))
(declare-datatypes ((array!91105 0))(
  ( (array!91106 (arr!44004 (Array (_ BitVec 32) ValueCell!17675)) (size!44555 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91105)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24150 0))(
  ( (tuple2!24151 (_1!12085 (_ BitVec 64)) (_2!12085 V!54633)) )
))
(declare-datatypes ((List!31335 0))(
  ( (Nil!31332) (Cons!31331 (h!32540 tuple2!24150) (t!45700 List!31335)) )
))
(declare-datatypes ((ListLongMap!21819 0))(
  ( (ListLongMap!21820 (toList!10925 List!31335)) )
))
(declare-fun contains!9037 (ListLongMap!21819 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5828 (array!91103 array!91105 (_ BitVec 32) (_ BitVec 32) V!54633 V!54633 (_ BitVec 32) Int) ListLongMap!21819)

(assert (=> b!1340593 (= res!889407 (contains!9037 (getCurrentListMap!5828 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun mapNonEmpty!57427 () Bool)

(declare-fun mapRes!57427 () Bool)

(declare-fun tp!109246 () Bool)

(assert (=> mapNonEmpty!57427 (= mapRes!57427 (and tp!109246 e!763555))))

(declare-fun mapValue!57427 () ValueCell!17675)

(declare-fun mapRest!57427 () (Array (_ BitVec 32) ValueCell!17675))

(declare-fun mapKey!57427 () (_ BitVec 32))

(assert (=> mapNonEmpty!57427 (= (arr!44004 _values!1303) (store mapRest!57427 mapKey!57427 mapValue!57427))))

(declare-fun b!1340594 () Bool)

(declare-fun e!763553 () Bool)

(assert (=> b!1340594 (= e!763553 (and e!763552 mapRes!57427))))

(declare-fun condMapEmpty!57427 () Bool)

(declare-fun mapDefault!57427 () ValueCell!17675)

