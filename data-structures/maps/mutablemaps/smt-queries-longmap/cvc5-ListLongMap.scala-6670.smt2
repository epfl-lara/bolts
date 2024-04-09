; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84020 () Bool)

(assert start!84020)

(declare-fun b_free!19747 () Bool)

(declare-fun b_next!19747 () Bool)

(assert (=> start!84020 (= b_free!19747 (not b_next!19747))))

(declare-fun tp!68765 () Bool)

(declare-fun b_and!31595 () Bool)

(assert (=> start!84020 (= tp!68765 b_and!31595)))

(declare-fun b!981464 () Bool)

(declare-fun res!656891 () Bool)

(declare-fun e!553322 () Bool)

(assert (=> b!981464 (=> (not res!656891) (not e!553322))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61583 0))(
  ( (array!61584 (arr!29645 (Array (_ BitVec 32) (_ BitVec 64))) (size!30125 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61583)

(assert (=> b!981464 (= res!656891 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30125 _keys!1544))))))

(declare-fun mapIsEmpty!36221 () Bool)

(declare-fun mapRes!36221 () Bool)

(assert (=> mapIsEmpty!36221 mapRes!36221))

(declare-fun res!656895 () Bool)

(assert (=> start!84020 (=> (not res!656895) (not e!553322))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84020 (= res!656895 (validMask!0 mask!1948))))

(assert (=> start!84020 e!553322))

(assert (=> start!84020 true))

(declare-fun tp_is_empty!22795 () Bool)

(assert (=> start!84020 tp_is_empty!22795))

(declare-datatypes ((V!35377 0))(
  ( (V!35378 (val!11448 Int)) )
))
(declare-datatypes ((ValueCell!10916 0))(
  ( (ValueCellFull!10916 (v!14010 V!35377)) (EmptyCell!10916) )
))
(declare-datatypes ((array!61585 0))(
  ( (array!61586 (arr!29646 (Array (_ BitVec 32) ValueCell!10916)) (size!30126 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61585)

(declare-fun e!553317 () Bool)

(declare-fun array_inv!22801 (array!61585) Bool)

(assert (=> start!84020 (and (array_inv!22801 _values!1278) e!553317)))

(assert (=> start!84020 tp!68765))

(declare-fun array_inv!22802 (array!61583) Bool)

(assert (=> start!84020 (array_inv!22802 _keys!1544)))

(declare-fun b!981465 () Bool)

(declare-fun e!553319 () Bool)

(assert (=> b!981465 (= e!553319 tp_is_empty!22795)))

(declare-fun b!981466 () Bool)

(declare-fun res!656892 () Bool)

(assert (=> b!981466 (=> (not res!656892) (not e!553322))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!981466 (= res!656892 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!981467 () Bool)

(declare-fun e!553321 () Bool)

(assert (=> b!981467 (= e!553321 tp_is_empty!22795)))

(declare-fun mapNonEmpty!36221 () Bool)

(declare-fun tp!68764 () Bool)

(assert (=> mapNonEmpty!36221 (= mapRes!36221 (and tp!68764 e!553319))))

(declare-fun mapKey!36221 () (_ BitVec 32))

(declare-fun mapRest!36221 () (Array (_ BitVec 32) ValueCell!10916))

(declare-fun mapValue!36221 () ValueCell!10916)

(assert (=> mapNonEmpty!36221 (= (arr!29646 _values!1278) (store mapRest!36221 mapKey!36221 mapValue!36221))))

(declare-fun b!981468 () Bool)

(assert (=> b!981468 (= e!553317 (and e!553321 mapRes!36221))))

(declare-fun condMapEmpty!36221 () Bool)

(declare-fun mapDefault!36221 () ValueCell!10916)

