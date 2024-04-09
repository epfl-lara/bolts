; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113340 () Bool)

(assert start!113340)

(declare-fun b_free!31355 () Bool)

(declare-fun b_next!31355 () Bool)

(assert (=> start!113340 (= b_free!31355 (not b_next!31355))))

(declare-fun tp!109870 () Bool)

(declare-fun b_and!50587 () Bool)

(assert (=> start!113340 (= tp!109870 b_and!50587)))

(declare-fun b!1344250 () Bool)

(declare-fun res!891961 () Bool)

(declare-fun e!765113 () Bool)

(assert (=> b!1344250 (=> (not res!891961) (not e!765113))))

(declare-datatypes ((array!91507 0))(
  ( (array!91508 (arr!44205 (Array (_ BitVec 32) (_ BitVec 64))) (size!44756 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91507)

(declare-datatypes ((List!31483 0))(
  ( (Nil!31480) (Cons!31479 (h!32688 (_ BitVec 64)) (t!46014 List!31483)) )
))
(declare-fun arrayNoDuplicates!0 (array!91507 (_ BitVec 32) List!31483) Bool)

(assert (=> b!1344250 (= res!891961 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31480))))

(declare-fun mapIsEmpty!57739 () Bool)

(declare-fun mapRes!57739 () Bool)

(assert (=> mapIsEmpty!57739 mapRes!57739))

(declare-fun b!1344251 () Bool)

(declare-fun res!891965 () Bool)

(assert (=> b!1344251 (=> (not res!891965) (not e!765113))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1344251 (= res!891965 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44756 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1344252 () Bool)

(declare-fun e!765114 () Bool)

(declare-fun tp_is_empty!37355 () Bool)

(assert (=> b!1344252 (= e!765114 tp_is_empty!37355)))

(declare-fun mapNonEmpty!57739 () Bool)

(declare-fun tp!109871 () Bool)

(assert (=> mapNonEmpty!57739 (= mapRes!57739 (and tp!109871 e!765114))))

(declare-datatypes ((V!54909 0))(
  ( (V!54910 (val!18752 Int)) )
))
(declare-datatypes ((ValueCell!17779 0))(
  ( (ValueCellFull!17779 (v!21398 V!54909)) (EmptyCell!17779) )
))
(declare-fun mapValue!57739 () ValueCell!17779)

(declare-fun mapKey!57739 () (_ BitVec 32))

(declare-fun mapRest!57739 () (Array (_ BitVec 32) ValueCell!17779))

(declare-datatypes ((array!91509 0))(
  ( (array!91510 (arr!44206 (Array (_ BitVec 32) ValueCell!17779)) (size!44757 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91509)

(assert (=> mapNonEmpty!57739 (= (arr!44206 _values!1303) (store mapRest!57739 mapKey!57739 mapValue!57739))))

(declare-fun b!1344253 () Bool)

(declare-fun e!765115 () Bool)

(declare-fun e!765116 () Bool)

(assert (=> b!1344253 (= e!765115 (and e!765116 mapRes!57739))))

(declare-fun condMapEmpty!57739 () Bool)

(declare-fun mapDefault!57739 () ValueCell!17779)

