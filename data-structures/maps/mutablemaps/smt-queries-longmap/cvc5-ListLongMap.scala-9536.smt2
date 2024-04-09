; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113114 () Bool)

(assert start!113114)

(declare-fun b_free!31129 () Bool)

(declare-fun b_next!31129 () Bool)

(assert (=> start!113114 (= b_free!31129 (not b_next!31129))))

(declare-fun tp!109193 () Bool)

(declare-fun b_and!50175 () Bool)

(assert (=> start!113114 (= tp!109193 b_and!50175)))

(declare-fun b!1340244 () Bool)

(declare-fun res!889162 () Bool)

(declare-fun e!763418 () Bool)

(assert (=> b!1340244 (=> (not res!889162) (not e!763418))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1340244 (= res!889162 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1340245 () Bool)

(declare-fun res!889161 () Bool)

(assert (=> b!1340245 (=> (not res!889161) (not e!763418))))

(declare-datatypes ((array!91069 0))(
  ( (array!91070 (arr!43986 (Array (_ BitVec 32) (_ BitVec 64))) (size!44537 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91069)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91069 (_ BitVec 32)) Bool)

(assert (=> b!1340245 (= res!889161 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapIsEmpty!57400 () Bool)

(declare-fun mapRes!57400 () Bool)

(assert (=> mapIsEmpty!57400 mapRes!57400))

(declare-fun mapNonEmpty!57400 () Bool)

(declare-fun tp!109192 () Bool)

(declare-fun e!763420 () Bool)

(assert (=> mapNonEmpty!57400 (= mapRes!57400 (and tp!109192 e!763420))))

(declare-datatypes ((V!54609 0))(
  ( (V!54610 (val!18639 Int)) )
))
(declare-datatypes ((ValueCell!17666 0))(
  ( (ValueCellFull!17666 (v!21285 V!54609)) (EmptyCell!17666) )
))
(declare-fun mapRest!57400 () (Array (_ BitVec 32) ValueCell!17666))

(declare-fun mapValue!57400 () ValueCell!17666)

(declare-fun mapKey!57400 () (_ BitVec 32))

(declare-datatypes ((array!91071 0))(
  ( (array!91072 (arr!43987 (Array (_ BitVec 32) ValueCell!17666)) (size!44538 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91071)

(assert (=> mapNonEmpty!57400 (= (arr!43987 _values!1303) (store mapRest!57400 mapKey!57400 mapValue!57400))))

(declare-fun b!1340246 () Bool)

(declare-fun res!889164 () Bool)

(assert (=> b!1340246 (=> (not res!889164) (not e!763418))))

(declare-fun minValue!1245 () V!54609)

(declare-fun zeroValue!1245 () V!54609)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24136 0))(
  ( (tuple2!24137 (_1!12078 (_ BitVec 64)) (_2!12078 V!54609)) )
))
(declare-datatypes ((List!31322 0))(
  ( (Nil!31319) (Cons!31318 (h!32527 tuple2!24136) (t!45669 List!31322)) )
))
(declare-datatypes ((ListLongMap!21805 0))(
  ( (ListLongMap!21806 (toList!10918 List!31322)) )
))
(declare-fun contains!9030 (ListLongMap!21805 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5822 (array!91069 array!91071 (_ BitVec 32) (_ BitVec 32) V!54609 V!54609 (_ BitVec 32) Int) ListLongMap!21805)

(assert (=> b!1340246 (= res!889164 (contains!9030 (getCurrentListMap!5822 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1340247 () Bool)

(declare-fun e!763419 () Bool)

(declare-fun e!763421 () Bool)

(assert (=> b!1340247 (= e!763419 (and e!763421 mapRes!57400))))

(declare-fun condMapEmpty!57400 () Bool)

(declare-fun mapDefault!57400 () ValueCell!17666)

