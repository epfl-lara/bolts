; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110678 () Bool)

(assert start!110678)

(declare-fun b_free!29477 () Bool)

(declare-fun b_next!29477 () Bool)

(assert (=> start!110678 (= b_free!29477 (not b_next!29477))))

(declare-fun tp!103753 () Bool)

(declare-fun b_and!47695 () Bool)

(assert (=> start!110678 (= tp!103753 b_and!47695)))

(declare-fun mapNonEmpty!54439 () Bool)

(declare-fun mapRes!54439 () Bool)

(declare-fun tp!103754 () Bool)

(declare-fun e!746911 () Bool)

(assert (=> mapNonEmpty!54439 (= mapRes!54439 (and tp!103754 e!746911))))

(declare-datatypes ((V!52045 0))(
  ( (V!52046 (val!17678 Int)) )
))
(declare-datatypes ((ValueCell!16705 0))(
  ( (ValueCellFull!16705 (v!20303 V!52045)) (EmptyCell!16705) )
))
(declare-fun mapValue!54439 () ValueCell!16705)

(declare-fun mapKey!54439 () (_ BitVec 32))

(declare-fun mapRest!54439 () (Array (_ BitVec 32) ValueCell!16705))

(declare-datatypes ((array!87377 0))(
  ( (array!87378 (arr!42164 (Array (_ BitVec 32) ValueCell!16705)) (size!42715 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87377)

(assert (=> mapNonEmpty!54439 (= (arr!42164 _values!1354) (store mapRest!54439 mapKey!54439 mapValue!54439))))

(declare-fun b!1309086 () Bool)

(declare-fun res!869105 () Bool)

(declare-fun e!746914 () Bool)

(assert (=> b!1309086 (=> (not res!869105) (not e!746914))))

(declare-datatypes ((array!87379 0))(
  ( (array!87380 (arr!42165 (Array (_ BitVec 32) (_ BitVec 64))) (size!42716 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87379)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1309086 (= res!869105 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42716 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1309087 () Bool)

(assert (=> b!1309087 (= e!746914 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585166 () Bool)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun minValue!1296 () V!52045)

(declare-fun zeroValue!1296 () V!52045)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!22930 0))(
  ( (tuple2!22931 (_1!11475 (_ BitVec 64)) (_2!11475 V!52045)) )
))
(declare-datatypes ((List!30101 0))(
  ( (Nil!30098) (Cons!30097 (h!31306 tuple2!22930) (t!43714 List!30101)) )
))
(declare-datatypes ((ListLongMap!20599 0))(
  ( (ListLongMap!20600 (toList!10315 List!30101)) )
))
(declare-fun contains!8401 (ListLongMap!20599 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5271 (array!87379 array!87377 (_ BitVec 32) (_ BitVec 32) V!52045 V!52045 (_ BitVec 32) Int) ListLongMap!20599)

(assert (=> b!1309087 (= lt!585166 (contains!8401 (getCurrentListMap!5271 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1309088 () Bool)

(declare-fun e!746915 () Bool)

(declare-fun tp_is_empty!35207 () Bool)

(assert (=> b!1309088 (= e!746915 tp_is_empty!35207)))

(declare-fun b!1309089 () Bool)

(declare-fun e!746913 () Bool)

(assert (=> b!1309089 (= e!746913 (and e!746915 mapRes!54439))))

(declare-fun condMapEmpty!54439 () Bool)

(declare-fun mapDefault!54439 () ValueCell!16705)

