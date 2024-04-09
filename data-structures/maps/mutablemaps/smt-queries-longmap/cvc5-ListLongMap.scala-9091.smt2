; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109366 () Bool)

(assert start!109366)

(declare-fun b_free!28819 () Bool)

(declare-fun b_next!28819 () Bool)

(assert (=> start!109366 (= b_free!28819 (not b_next!28819))))

(declare-fun tp!101576 () Bool)

(declare-fun b_and!46919 () Bool)

(assert (=> start!109366 (= tp!101576 b_and!46919)))

(declare-fun mapNonEmpty!53249 () Bool)

(declare-fun mapRes!53249 () Bool)

(declare-fun tp!101577 () Bool)

(declare-fun e!738401 () Bool)

(assert (=> mapNonEmpty!53249 (= mapRes!53249 (and tp!101577 e!738401))))

(declare-datatypes ((V!51049 0))(
  ( (V!51050 (val!17304 Int)) )
))
(declare-datatypes ((ValueCell!16331 0))(
  ( (ValueCellFull!16331 (v!19905 V!51049)) (EmptyCell!16331) )
))
(declare-fun mapValue!53249 () ValueCell!16331)

(declare-datatypes ((array!85905 0))(
  ( (array!85906 (arr!41449 (Array (_ BitVec 32) ValueCell!16331)) (size!42000 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85905)

(declare-fun mapKey!53249 () (_ BitVec 32))

(declare-fun mapRest!53249 () (Array (_ BitVec 32) ValueCell!16331))

(assert (=> mapNonEmpty!53249 (= (arr!41449 _values!1445) (store mapRest!53249 mapKey!53249 mapValue!53249))))

(declare-fun b!1293844 () Bool)

(declare-fun res!859897 () Bool)

(declare-fun e!738399 () Bool)

(assert (=> b!1293844 (=> (not res!859897) (not e!738399))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!85907 0))(
  ( (array!85908 (arr!41450 (Array (_ BitVec 32) (_ BitVec 64))) (size!42001 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85907)

(assert (=> b!1293844 (= res!859897 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42001 _keys!1741))))))

(declare-fun b!1293845 () Bool)

(declare-fun res!859901 () Bool)

(assert (=> b!1293845 (=> (not res!859901) (not e!738399))))

(assert (=> b!1293845 (= res!859901 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42001 _keys!1741))))))

(declare-fun b!1293846 () Bool)

(declare-fun e!738402 () Bool)

(declare-fun e!738400 () Bool)

(assert (=> b!1293846 (= e!738402 (and e!738400 mapRes!53249))))

(declare-fun condMapEmpty!53249 () Bool)

(declare-fun mapDefault!53249 () ValueCell!16331)

