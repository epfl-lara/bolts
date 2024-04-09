; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108826 () Bool)

(assert start!108826)

(declare-fun b_free!28303 () Bool)

(declare-fun b_next!28303 () Bool)

(assert (=> start!108826 (= b_free!28303 (not b_next!28303))))

(declare-fun tp!100025 () Bool)

(declare-fun b_and!46379 () Bool)

(assert (=> start!108826 (= tp!100025 b_and!46379)))

(declare-fun b!1284570 () Bool)

(declare-fun res!853436 () Bool)

(declare-fun e!733810 () Bool)

(assert (=> b!1284570 (=> (not res!853436) (not e!733810))))

(declare-datatypes ((array!84901 0))(
  ( (array!84902 (arr!40948 (Array (_ BitVec 32) (_ BitVec 64))) (size!41499 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84901)

(declare-datatypes ((List!29188 0))(
  ( (Nil!29185) (Cons!29184 (h!30393 (_ BitVec 64)) (t!42739 List!29188)) )
))
(declare-fun arrayNoDuplicates!0 (array!84901 (_ BitVec 32) List!29188) Bool)

(assert (=> b!1284570 (= res!853436 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29185))))

(declare-fun res!853434 () Bool)

(assert (=> start!108826 (=> (not res!853434) (not e!733810))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108826 (= res!853434 (validMask!0 mask!2175))))

(assert (=> start!108826 e!733810))

(declare-fun tp_is_empty!33943 () Bool)

(assert (=> start!108826 tp_is_empty!33943))

(assert (=> start!108826 true))

(declare-datatypes ((V!50361 0))(
  ( (V!50362 (val!17046 Int)) )
))
(declare-datatypes ((ValueCell!16073 0))(
  ( (ValueCellFull!16073 (v!19646 V!50361)) (EmptyCell!16073) )
))
(declare-datatypes ((array!84903 0))(
  ( (array!84904 (arr!40949 (Array (_ BitVec 32) ValueCell!16073)) (size!41500 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84903)

(declare-fun e!733807 () Bool)

(declare-fun array_inv!31037 (array!84903) Bool)

(assert (=> start!108826 (and (array_inv!31037 _values!1445) e!733807)))

(declare-fun array_inv!31038 (array!84901) Bool)

(assert (=> start!108826 (array_inv!31038 _keys!1741)))

(assert (=> start!108826 tp!100025))

(declare-fun b!1284571 () Bool)

(declare-fun e!733809 () Bool)

(declare-fun mapRes!52472 () Bool)

(assert (=> b!1284571 (= e!733807 (and e!733809 mapRes!52472))))

(declare-fun condMapEmpty!52472 () Bool)

(declare-fun mapDefault!52472 () ValueCell!16073)

