; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113572 () Bool)

(assert start!113572)

(declare-fun b_free!31529 () Bool)

(declare-fun b_next!31529 () Bool)

(assert (=> start!113572 (= b_free!31529 (not b_next!31529))))

(declare-fun tp!110397 () Bool)

(declare-fun b_and!50857 () Bool)

(assert (=> start!113572 (= tp!110397 b_and!50857)))

(declare-fun b!1347592 () Bool)

(declare-fun res!894223 () Bool)

(declare-fun e!766743 () Bool)

(assert (=> b!1347592 (=> (not res!894223) (not e!766743))))

(declare-datatypes ((V!55141 0))(
  ( (V!55142 (val!18839 Int)) )
))
(declare-fun minValue!1245 () V!55141)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91849 0))(
  ( (array!91850 (arr!44375 (Array (_ BitVec 32) (_ BitVec 64))) (size!44926 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91849)

(declare-fun zeroValue!1245 () V!55141)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17866 0))(
  ( (ValueCellFull!17866 (v!21488 V!55141)) (EmptyCell!17866) )
))
(declare-datatypes ((array!91851 0))(
  ( (array!91852 (arr!44376 (Array (_ BitVec 32) ValueCell!17866)) (size!44927 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91851)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((tuple2!24428 0))(
  ( (tuple2!24429 (_1!12224 (_ BitVec 64)) (_2!12224 V!55141)) )
))
(declare-datatypes ((List!31597 0))(
  ( (Nil!31594) (Cons!31593 (h!32802 tuple2!24428) (t!46212 List!31597)) )
))
(declare-datatypes ((ListLongMap!22097 0))(
  ( (ListLongMap!22098 (toList!11064 List!31597)) )
))
(declare-fun contains!9177 (ListLongMap!22097 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5954 (array!91849 array!91851 (_ BitVec 32) (_ BitVec 32) V!55141 V!55141 (_ BitVec 32) Int) ListLongMap!22097)

(assert (=> b!1347592 (= res!894223 (contains!9177 (getCurrentListMap!5954 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1347593 () Bool)

(declare-fun res!894217 () Bool)

(assert (=> b!1347593 (=> (not res!894217) (not e!766743))))

(declare-datatypes ((List!31598 0))(
  ( (Nil!31595) (Cons!31594 (h!32803 (_ BitVec 64)) (t!46213 List!31598)) )
))
(declare-fun arrayNoDuplicates!0 (array!91849 (_ BitVec 32) List!31598) Bool)

(assert (=> b!1347593 (= res!894217 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31595))))

(declare-fun b!1347595 () Bool)

(declare-fun res!894215 () Bool)

(assert (=> b!1347595 (=> (not res!894215) (not e!766743))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91849 (_ BitVec 32)) Bool)

(assert (=> b!1347595 (= res!894215 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapIsEmpty!58004 () Bool)

(declare-fun mapRes!58004 () Bool)

(assert (=> mapIsEmpty!58004 mapRes!58004))

(declare-fun b!1347596 () Bool)

(declare-fun res!894222 () Bool)

(assert (=> b!1347596 (=> (not res!894222) (not e!766743))))

(assert (=> b!1347596 (= res!894222 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44926 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1347597 () Bool)

(declare-fun e!766741 () Bool)

(declare-fun e!766742 () Bool)

(assert (=> b!1347597 (= e!766741 (and e!766742 mapRes!58004))))

(declare-fun condMapEmpty!58004 () Bool)

(declare-fun mapDefault!58004 () ValueCell!17866)

