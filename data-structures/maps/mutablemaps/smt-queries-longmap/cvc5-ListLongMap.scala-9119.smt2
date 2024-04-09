; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109534 () Bool)

(assert start!109534)

(declare-fun b_free!28987 () Bool)

(declare-fun b_next!28987 () Bool)

(assert (=> start!109534 (= b_free!28987 (not b_next!28987))))

(declare-fun tp!102080 () Bool)

(declare-fun b_and!47087 () Bool)

(assert (=> start!109534 (= tp!102080 b_and!47087)))

(declare-fun mapIsEmpty!53501 () Bool)

(declare-fun mapRes!53501 () Bool)

(assert (=> mapIsEmpty!53501 mapRes!53501))

(declare-fun b!1296781 () Bool)

(declare-fun res!861916 () Bool)

(declare-fun e!739852 () Bool)

(assert (=> b!1296781 (=> (not res!861916) (not e!739852))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86233 0))(
  ( (array!86234 (arr!41613 (Array (_ BitVec 32) (_ BitVec 64))) (size!42164 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86233)

(assert (=> b!1296781 (= res!861916 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42164 _keys!1741))))))

(declare-fun b!1296782 () Bool)

(declare-fun e!739848 () Bool)

(declare-fun e!739851 () Bool)

(assert (=> b!1296782 (= e!739848 (and e!739851 mapRes!53501))))

(declare-fun condMapEmpty!53501 () Bool)

(declare-datatypes ((V!51273 0))(
  ( (V!51274 (val!17388 Int)) )
))
(declare-datatypes ((ValueCell!16415 0))(
  ( (ValueCellFull!16415 (v!19989 V!51273)) (EmptyCell!16415) )
))
(declare-datatypes ((array!86235 0))(
  ( (array!86236 (arr!41614 (Array (_ BitVec 32) ValueCell!16415)) (size!42165 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86235)

(declare-fun mapDefault!53501 () ValueCell!16415)

