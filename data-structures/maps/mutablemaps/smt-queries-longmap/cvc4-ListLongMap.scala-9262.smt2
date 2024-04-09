; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110960 () Bool)

(assert start!110960)

(declare-fun b_free!29759 () Bool)

(declare-fun b_next!29759 () Bool)

(assert (=> start!110960 (= b_free!29759 (not b_next!29759))))

(declare-fun tp!104600 () Bool)

(declare-fun b_and!47977 () Bool)

(assert (=> start!110960 (= tp!104600 b_and!47977)))

(declare-fun b!1313145 () Bool)

(declare-fun res!871894 () Bool)

(declare-fun e!749030 () Bool)

(assert (=> b!1313145 (=> (not res!871894) (not e!749030))))

(declare-datatypes ((array!87925 0))(
  ( (array!87926 (arr!42438 (Array (_ BitVec 32) (_ BitVec 64))) (size!42989 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87925)

(declare-datatypes ((List!30308 0))(
  ( (Nil!30305) (Cons!30304 (h!31513 (_ BitVec 64)) (t!43921 List!30308)) )
))
(declare-fun arrayNoDuplicates!0 (array!87925 (_ BitVec 32) List!30308) Bool)

(assert (=> b!1313145 (= res!871894 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30305))))

(declare-fun b!1313146 () Bool)

(assert (=> b!1313146 (= e!749030 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585580 () Bool)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52421 0))(
  ( (V!52422 (val!17819 Int)) )
))
(declare-fun minValue!1296 () V!52421)

(declare-datatypes ((ValueCell!16846 0))(
  ( (ValueCellFull!16846 (v!20444 V!52421)) (EmptyCell!16846) )
))
(declare-datatypes ((array!87927 0))(
  ( (array!87928 (arr!42439 (Array (_ BitVec 32) ValueCell!16846)) (size!42990 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87927)

(declare-fun zeroValue!1296 () V!52421)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23148 0))(
  ( (tuple2!23149 (_1!11584 (_ BitVec 64)) (_2!11584 V!52421)) )
))
(declare-datatypes ((List!30309 0))(
  ( (Nil!30306) (Cons!30305 (h!31514 tuple2!23148) (t!43922 List!30309)) )
))
(declare-datatypes ((ListLongMap!20817 0))(
  ( (ListLongMap!20818 (toList!10424 List!30309)) )
))
(declare-fun contains!8510 (ListLongMap!20817 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5380 (array!87925 array!87927 (_ BitVec 32) (_ BitVec 32) V!52421 V!52421 (_ BitVec 32) Int) ListLongMap!20817)

(assert (=> b!1313146 (= lt!585580 (contains!8510 (getCurrentListMap!5380 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1313147 () Bool)

(declare-fun res!871896 () Bool)

(assert (=> b!1313147 (=> (not res!871896) (not e!749030))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87925 (_ BitVec 32)) Bool)

(assert (=> b!1313147 (= res!871896 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1313148 () Bool)

(declare-fun res!871897 () Bool)

(assert (=> b!1313148 (=> (not res!871897) (not e!749030))))

(assert (=> b!1313148 (= res!871897 (and (= (size!42990 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42989 _keys!1628) (size!42990 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1313149 () Bool)

(declare-fun e!749029 () Bool)

(declare-fun tp_is_empty!35489 () Bool)

(assert (=> b!1313149 (= e!749029 tp_is_empty!35489)))

(declare-fun res!871898 () Bool)

(assert (=> start!110960 (=> (not res!871898) (not e!749030))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110960 (= res!871898 (validMask!0 mask!2040))))

(assert (=> start!110960 e!749030))

(assert (=> start!110960 tp!104600))

(declare-fun array_inv!32039 (array!87925) Bool)

(assert (=> start!110960 (array_inv!32039 _keys!1628)))

(assert (=> start!110960 true))

(assert (=> start!110960 tp_is_empty!35489))

(declare-fun e!749028 () Bool)

(declare-fun array_inv!32040 (array!87927) Bool)

(assert (=> start!110960 (and (array_inv!32040 _values!1354) e!749028)))

(declare-fun mapNonEmpty!54862 () Bool)

(declare-fun mapRes!54862 () Bool)

(declare-fun tp!104599 () Bool)

(assert (=> mapNonEmpty!54862 (= mapRes!54862 (and tp!104599 e!749029))))

(declare-fun mapRest!54862 () (Array (_ BitVec 32) ValueCell!16846))

(declare-fun mapKey!54862 () (_ BitVec 32))

(declare-fun mapValue!54862 () ValueCell!16846)

(assert (=> mapNonEmpty!54862 (= (arr!42439 _values!1354) (store mapRest!54862 mapKey!54862 mapValue!54862))))

(declare-fun mapIsEmpty!54862 () Bool)

(assert (=> mapIsEmpty!54862 mapRes!54862))

(declare-fun b!1313150 () Bool)

(declare-fun res!871895 () Bool)

(assert (=> b!1313150 (=> (not res!871895) (not e!749030))))

(assert (=> b!1313150 (= res!871895 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42989 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1313151 () Bool)

(declare-fun e!749027 () Bool)

(assert (=> b!1313151 (= e!749028 (and e!749027 mapRes!54862))))

(declare-fun condMapEmpty!54862 () Bool)

(declare-fun mapDefault!54862 () ValueCell!16846)

