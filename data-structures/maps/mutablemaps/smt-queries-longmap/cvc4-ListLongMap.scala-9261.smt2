; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110954 () Bool)

(assert start!110954)

(declare-fun b_free!29753 () Bool)

(declare-fun b_next!29753 () Bool)

(assert (=> start!110954 (= b_free!29753 (not b_next!29753))))

(declare-fun tp!104582 () Bool)

(declare-fun b_and!47971 () Bool)

(assert (=> start!110954 (= tp!104582 b_and!47971)))

(declare-fun b!1313070 () Bool)

(declare-fun res!871852 () Bool)

(declare-fun e!748982 () Bool)

(assert (=> b!1313070 (=> (not res!871852) (not e!748982))))

(declare-datatypes ((array!87913 0))(
  ( (array!87914 (arr!42432 (Array (_ BitVec 32) (_ BitVec 64))) (size!42983 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87913)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1313070 (= res!871852 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42983 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1313071 () Bool)

(declare-fun res!871851 () Bool)

(assert (=> b!1313071 (=> (not res!871851) (not e!748982))))

(declare-datatypes ((List!30302 0))(
  ( (Nil!30299) (Cons!30298 (h!31507 (_ BitVec 64)) (t!43915 List!30302)) )
))
(declare-fun arrayNoDuplicates!0 (array!87913 (_ BitVec 32) List!30302) Bool)

(assert (=> b!1313071 (= res!871851 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30299))))

(declare-fun b!1313072 () Bool)

(declare-fun res!871846 () Bool)

(assert (=> b!1313072 (=> (not res!871846) (not e!748982))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1313072 (= res!871846 (not (validKeyInArray!0 (select (arr!42432 _keys!1628) from!2020))))))

(declare-fun mapIsEmpty!54853 () Bool)

(declare-fun mapRes!54853 () Bool)

(assert (=> mapIsEmpty!54853 mapRes!54853))

(declare-fun b!1313074 () Bool)

(declare-fun res!871853 () Bool)

(assert (=> b!1313074 (=> (not res!871853) (not e!748982))))

(assert (=> b!1313074 (= res!871853 (not (= (select (arr!42432 _keys!1628) from!2020) k!1175)))))

(declare-fun b!1313075 () Bool)

(declare-fun res!871850 () Bool)

(assert (=> b!1313075 (=> (not res!871850) (not e!748982))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52413 0))(
  ( (V!52414 (val!17816 Int)) )
))
(declare-fun minValue!1296 () V!52413)

(declare-datatypes ((ValueCell!16843 0))(
  ( (ValueCellFull!16843 (v!20441 V!52413)) (EmptyCell!16843) )
))
(declare-datatypes ((array!87915 0))(
  ( (array!87916 (arr!42433 (Array (_ BitVec 32) ValueCell!16843)) (size!42984 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87915)

(declare-fun zeroValue!1296 () V!52413)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!23142 0))(
  ( (tuple2!23143 (_1!11581 (_ BitVec 64)) (_2!11581 V!52413)) )
))
(declare-datatypes ((List!30303 0))(
  ( (Nil!30300) (Cons!30299 (h!31508 tuple2!23142) (t!43916 List!30303)) )
))
(declare-datatypes ((ListLongMap!20811 0))(
  ( (ListLongMap!20812 (toList!10421 List!30303)) )
))
(declare-fun contains!8507 (ListLongMap!20811 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5377 (array!87913 array!87915 (_ BitVec 32) (_ BitVec 32) V!52413 V!52413 (_ BitVec 32) Int) ListLongMap!20811)

(assert (=> b!1313075 (= res!871850 (contains!8507 (getCurrentListMap!5377 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1313076 () Bool)

(declare-fun e!748985 () Bool)

(declare-fun e!748983 () Bool)

(assert (=> b!1313076 (= e!748985 (and e!748983 mapRes!54853))))

(declare-fun condMapEmpty!54853 () Bool)

(declare-fun mapDefault!54853 () ValueCell!16843)

