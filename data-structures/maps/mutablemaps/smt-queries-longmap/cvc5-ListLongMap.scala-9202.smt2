; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110596 () Bool)

(assert start!110596)

(declare-fun b_free!29395 () Bool)

(declare-fun b_next!29395 () Bool)

(assert (=> start!110596 (= b_free!29395 (not b_next!29395))))

(declare-fun tp!103508 () Bool)

(declare-fun b_and!47613 () Bool)

(assert (=> start!110596 (= tp!103508 b_and!47613)))

(declare-fun b!1307786 () Bool)

(declare-fun res!868177 () Bool)

(declare-fun e!746300 () Bool)

(assert (=> b!1307786 (=> (not res!868177) (not e!746300))))

(declare-datatypes ((array!87221 0))(
  ( (array!87222 (arr!42086 (Array (_ BitVec 32) (_ BitVec 64))) (size!42637 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87221)

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(assert (=> b!1307786 (= res!868177 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42637 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!54316 () Bool)

(declare-fun mapRes!54316 () Bool)

(assert (=> mapIsEmpty!54316 mapRes!54316))

(declare-fun b!1307787 () Bool)

(declare-fun res!868181 () Bool)

(assert (=> b!1307787 (=> (not res!868181) (not e!746300))))

(declare-datatypes ((List!30044 0))(
  ( (Nil!30041) (Cons!30040 (h!31249 (_ BitVec 64)) (t!43657 List!30044)) )
))
(declare-fun arrayNoDuplicates!0 (array!87221 (_ BitVec 32) List!30044) Bool)

(assert (=> b!1307787 (= res!868181 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30041))))

(declare-fun b!1307788 () Bool)

(declare-fun res!868176 () Bool)

(assert (=> b!1307788 (=> (not res!868176) (not e!746300))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!51937 0))(
  ( (V!51938 (val!17637 Int)) )
))
(declare-fun minValue!1296 () V!51937)

(declare-datatypes ((ValueCell!16664 0))(
  ( (ValueCellFull!16664 (v!20262 V!51937)) (EmptyCell!16664) )
))
(declare-datatypes ((array!87223 0))(
  ( (array!87224 (arr!42087 (Array (_ BitVec 32) ValueCell!16664)) (size!42638 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87223)

(declare-fun zeroValue!1296 () V!51937)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!22872 0))(
  ( (tuple2!22873 (_1!11446 (_ BitVec 64)) (_2!11446 V!51937)) )
))
(declare-datatypes ((List!30045 0))(
  ( (Nil!30042) (Cons!30041 (h!31250 tuple2!22872) (t!43658 List!30045)) )
))
(declare-datatypes ((ListLongMap!20541 0))(
  ( (ListLongMap!20542 (toList!10286 List!30045)) )
))
(declare-fun contains!8372 (ListLongMap!20541 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5242 (array!87221 array!87223 (_ BitVec 32) (_ BitVec 32) V!51937 V!51937 (_ BitVec 32) Int) ListLongMap!20541)

(assert (=> b!1307788 (= res!868176 (contains!8372 (getCurrentListMap!5242 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1307790 () Bool)

(declare-fun e!746298 () Bool)

(declare-fun tp_is_empty!35125 () Bool)

(assert (=> b!1307790 (= e!746298 tp_is_empty!35125)))

(declare-fun b!1307791 () Bool)

(assert (=> b!1307791 (= e!746300 (not true))))

(assert (=> b!1307791 (contains!8372 (getCurrentListMap!5242 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))

(declare-datatypes ((Unit!43222 0))(
  ( (Unit!43223) )
))
(declare-fun lt!585043 () Unit!43222)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!1 (array!87221 array!87223 (_ BitVec 32) (_ BitVec 32) V!51937 V!51937 (_ BitVec 64) (_ BitVec 32) Int) Unit!43222)

(assert (=> b!1307791 (= lt!585043 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!1 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k!1175 from!2020 defaultEntry!1357))))

(declare-fun mapNonEmpty!54316 () Bool)

(declare-fun tp!103507 () Bool)

(assert (=> mapNonEmpty!54316 (= mapRes!54316 (and tp!103507 e!746298))))

(declare-fun mapRest!54316 () (Array (_ BitVec 32) ValueCell!16664))

(declare-fun mapValue!54316 () ValueCell!16664)

(declare-fun mapKey!54316 () (_ BitVec 32))

(assert (=> mapNonEmpty!54316 (= (arr!42087 _values!1354) (store mapRest!54316 mapKey!54316 mapValue!54316))))

(declare-fun b!1307792 () Bool)

(declare-fun res!868178 () Bool)

(assert (=> b!1307792 (=> (not res!868178) (not e!746300))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87221 (_ BitVec 32)) Bool)

(assert (=> b!1307792 (= res!868178 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1307793 () Bool)

(declare-fun e!746297 () Bool)

(declare-fun e!746299 () Bool)

(assert (=> b!1307793 (= e!746297 (and e!746299 mapRes!54316))))

(declare-fun condMapEmpty!54316 () Bool)

(declare-fun mapDefault!54316 () ValueCell!16664)

