; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109298 () Bool)

(assert start!109298)

(declare-fun b_free!28751 () Bool)

(declare-fun b_next!28751 () Bool)

(assert (=> start!109298 (= b_free!28751 (not b_next!28751))))

(declare-fun tp!101372 () Bool)

(declare-fun b_and!46851 () Bool)

(assert (=> start!109298 (= tp!101372 b_and!46851)))

(declare-fun b!1292622 () Bool)

(declare-fun res!858979 () Bool)

(declare-fun e!737789 () Bool)

(assert (=> b!1292622 (=> (not res!858979) (not e!737789))))

(declare-datatypes ((array!85773 0))(
  ( (array!85774 (arr!41383 (Array (_ BitVec 32) (_ BitVec 64))) (size!41934 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85773)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1292622 (= res!858979 (not (validKeyInArray!0 (select (arr!41383 _keys!1741) from!2144))))))

(declare-fun mapNonEmpty!53147 () Bool)

(declare-fun mapRes!53147 () Bool)

(declare-fun tp!101373 () Bool)

(declare-fun e!737794 () Bool)

(assert (=> mapNonEmpty!53147 (= mapRes!53147 (and tp!101373 e!737794))))

(declare-datatypes ((V!50957 0))(
  ( (V!50958 (val!17270 Int)) )
))
(declare-datatypes ((ValueCell!16297 0))(
  ( (ValueCellFull!16297 (v!19871 V!50957)) (EmptyCell!16297) )
))
(declare-fun mapValue!53147 () ValueCell!16297)

(declare-datatypes ((array!85775 0))(
  ( (array!85776 (arr!41384 (Array (_ BitVec 32) ValueCell!16297)) (size!41935 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85775)

(declare-fun mapRest!53147 () (Array (_ BitVec 32) ValueCell!16297))

(declare-fun mapKey!53147 () (_ BitVec 32))

(assert (=> mapNonEmpty!53147 (= (arr!41384 _values!1445) (store mapRest!53147 mapKey!53147 mapValue!53147))))

(declare-fun b!1292623 () Bool)

(declare-fun e!737791 () Bool)

(declare-fun tp_is_empty!34391 () Bool)

(assert (=> b!1292623 (= e!737791 tp_is_empty!34391)))

(declare-fun res!858982 () Bool)

(assert (=> start!109298 (=> (not res!858982) (not e!737789))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109298 (= res!858982 (validMask!0 mask!2175))))

(assert (=> start!109298 e!737789))

(assert (=> start!109298 tp_is_empty!34391))

(assert (=> start!109298 true))

(declare-fun e!737790 () Bool)

(declare-fun array_inv!31327 (array!85775) Bool)

(assert (=> start!109298 (and (array_inv!31327 _values!1445) e!737790)))

(declare-fun array_inv!31328 (array!85773) Bool)

(assert (=> start!109298 (array_inv!31328 _keys!1741)))

(assert (=> start!109298 tp!101372))

(declare-fun b!1292624 () Bool)

(assert (=> b!1292624 (= e!737790 (and e!737791 mapRes!53147))))

(declare-fun condMapEmpty!53147 () Bool)

(declare-fun mapDefault!53147 () ValueCell!16297)

