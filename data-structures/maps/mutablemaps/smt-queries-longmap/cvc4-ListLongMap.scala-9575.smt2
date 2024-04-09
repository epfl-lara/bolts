; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113352 () Bool)

(assert start!113352)

(declare-fun b_free!31367 () Bool)

(declare-fun b_next!31367 () Bool)

(assert (=> start!113352 (= b_free!31367 (not b_next!31367))))

(declare-fun tp!109907 () Bool)

(declare-fun b_and!50599 () Bool)

(assert (=> start!113352 (= tp!109907 b_and!50599)))

(declare-fun res!892078 () Bool)

(declare-fun e!765205 () Bool)

(assert (=> start!113352 (=> (not res!892078) (not e!765205))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113352 (= res!892078 (validMask!0 mask!1977))))

(assert (=> start!113352 e!765205))

(declare-fun tp_is_empty!37367 () Bool)

(assert (=> start!113352 tp_is_empty!37367))

(assert (=> start!113352 true))

(declare-datatypes ((array!91531 0))(
  ( (array!91532 (arr!44217 (Array (_ BitVec 32) (_ BitVec 64))) (size!44768 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91531)

(declare-fun array_inv!33243 (array!91531) Bool)

(assert (=> start!113352 (array_inv!33243 _keys!1571)))

(declare-datatypes ((V!54925 0))(
  ( (V!54926 (val!18758 Int)) )
))
(declare-datatypes ((ValueCell!17785 0))(
  ( (ValueCellFull!17785 (v!21404 V!54925)) (EmptyCell!17785) )
))
(declare-datatypes ((array!91533 0))(
  ( (array!91534 (arr!44218 (Array (_ BitVec 32) ValueCell!17785)) (size!44769 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91533)

(declare-fun e!765203 () Bool)

(declare-fun array_inv!33244 (array!91533) Bool)

(assert (=> start!113352 (and (array_inv!33244 _values!1303) e!765203)))

(assert (=> start!113352 tp!109907))

(declare-fun b!1344418 () Bool)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1344418 (= e!765205 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000)))))

(declare-fun b!1344419 () Bool)

(declare-fun res!892079 () Bool)

(assert (=> b!1344419 (=> (not res!892079) (not e!765205))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1344419 (= res!892079 (validKeyInArray!0 (select (arr!44217 _keys!1571) from!1960)))))

(declare-fun mapNonEmpty!57757 () Bool)

(declare-fun mapRes!57757 () Bool)

(declare-fun tp!109906 () Bool)

(declare-fun e!765206 () Bool)

(assert (=> mapNonEmpty!57757 (= mapRes!57757 (and tp!109906 e!765206))))

(declare-fun mapValue!57757 () ValueCell!17785)

(declare-fun mapKey!57757 () (_ BitVec 32))

(declare-fun mapRest!57757 () (Array (_ BitVec 32) ValueCell!17785))

(assert (=> mapNonEmpty!57757 (= (arr!44218 _values!1303) (store mapRest!57757 mapKey!57757 mapValue!57757))))

(declare-fun mapIsEmpty!57757 () Bool)

(assert (=> mapIsEmpty!57757 mapRes!57757))

(declare-fun b!1344420 () Bool)

(declare-fun e!765204 () Bool)

(assert (=> b!1344420 (= e!765203 (and e!765204 mapRes!57757))))

(declare-fun condMapEmpty!57757 () Bool)

(declare-fun mapDefault!57757 () ValueCell!17785)

