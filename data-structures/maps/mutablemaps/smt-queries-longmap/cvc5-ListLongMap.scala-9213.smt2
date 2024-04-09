; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110662 () Bool)

(assert start!110662)

(declare-fun b_free!29461 () Bool)

(declare-fun b_next!29461 () Bool)

(assert (=> start!110662 (= b_free!29461 (not b_next!29461))))

(declare-fun tp!103706 () Bool)

(declare-fun b_and!47679 () Bool)

(assert (=> start!110662 (= tp!103706 b_and!47679)))

(declare-fun mapNonEmpty!54415 () Bool)

(declare-fun mapRes!54415 () Bool)

(declare-fun tp!103705 () Bool)

(declare-fun e!746795 () Bool)

(assert (=> mapNonEmpty!54415 (= mapRes!54415 (and tp!103705 e!746795))))

(declare-datatypes ((V!52025 0))(
  ( (V!52026 (val!17670 Int)) )
))
(declare-datatypes ((ValueCell!16697 0))(
  ( (ValueCellFull!16697 (v!20295 V!52025)) (EmptyCell!16697) )
))
(declare-fun mapValue!54415 () ValueCell!16697)

(declare-fun mapRest!54415 () (Array (_ BitVec 32) ValueCell!16697))

(declare-datatypes ((array!87347 0))(
  ( (array!87348 (arr!42149 (Array (_ BitVec 32) ValueCell!16697)) (size!42700 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87347)

(declare-fun mapKey!54415 () (_ BitVec 32))

(assert (=> mapNonEmpty!54415 (= (arr!42149 _values!1354) (store mapRest!54415 mapKey!54415 mapValue!54415))))

(declare-fun b!1308894 () Bool)

(declare-fun res!868986 () Bool)

(declare-fun e!746792 () Bool)

(assert (=> b!1308894 (=> (not res!868986) (not e!746792))))

(declare-datatypes ((array!87349 0))(
  ( (array!87350 (arr!42150 (Array (_ BitVec 32) (_ BitVec 64))) (size!42701 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87349)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1308894 (= res!868986 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42701 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!54415 () Bool)

(assert (=> mapIsEmpty!54415 mapRes!54415))

(declare-fun b!1308895 () Bool)

(declare-fun res!868987 () Bool)

(assert (=> b!1308895 (=> (not res!868987) (not e!746792))))

(declare-datatypes ((List!30091 0))(
  ( (Nil!30088) (Cons!30087 (h!31296 (_ BitVec 64)) (t!43704 List!30091)) )
))
(declare-fun arrayNoDuplicates!0 (array!87349 (_ BitVec 32) List!30091) Bool)

(assert (=> b!1308895 (= res!868987 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30088))))

(declare-fun b!1308896 () Bool)

(declare-fun res!868984 () Bool)

(assert (=> b!1308896 (=> (not res!868984) (not e!746792))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun mask!2040 () (_ BitVec 32))

(assert (=> b!1308896 (= res!868984 (and (= (size!42700 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42701 _keys!1628) (size!42700 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1308897 () Bool)

(declare-fun e!746793 () Bool)

(declare-fun e!746791 () Bool)

(assert (=> b!1308897 (= e!746793 (and e!746791 mapRes!54415))))

(declare-fun condMapEmpty!54415 () Bool)

(declare-fun mapDefault!54415 () ValueCell!16697)

