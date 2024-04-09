; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110818 () Bool)

(assert start!110818)

(declare-fun b_free!29617 () Bool)

(declare-fun b_next!29617 () Bool)

(assert (=> start!110818 (= b_free!29617 (not b_next!29617))))

(declare-fun tp!104173 () Bool)

(declare-fun b_and!47835 () Bool)

(assert (=> start!110818 (= tp!104173 b_and!47835)))

(declare-fun mapNonEmpty!54649 () Bool)

(declare-fun mapRes!54649 () Bool)

(declare-fun tp!104174 () Bool)

(declare-fun e!747963 () Bool)

(assert (=> mapNonEmpty!54649 (= mapRes!54649 (and tp!104174 e!747963))))

(declare-datatypes ((V!52233 0))(
  ( (V!52234 (val!17748 Int)) )
))
(declare-datatypes ((ValueCell!16775 0))(
  ( (ValueCellFull!16775 (v!20373 V!52233)) (EmptyCell!16775) )
))
(declare-fun mapValue!54649 () ValueCell!16775)

(declare-fun mapRest!54649 () (Array (_ BitVec 32) ValueCell!16775))

(declare-datatypes ((array!87645 0))(
  ( (array!87646 (arr!42298 (Array (_ BitVec 32) ValueCell!16775)) (size!42849 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87645)

(declare-fun mapKey!54649 () (_ BitVec 32))

(assert (=> mapNonEmpty!54649 (= (arr!42298 _values!1354) (store mapRest!54649 mapKey!54649 mapValue!54649))))

(declare-fun b!1311090 () Bool)

(declare-fun res!870478 () Bool)

(declare-fun e!747961 () Bool)

(assert (=> b!1311090 (=> (not res!870478) (not e!747961))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((array!87647 0))(
  ( (array!87648 (arr!42299 (Array (_ BitVec 32) (_ BitVec 64))) (size!42850 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87647)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1311090 (= res!870478 (and (= (size!42849 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42850 _keys!1628) (size!42849 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1311091 () Bool)

(declare-fun res!870481 () Bool)

(assert (=> b!1311091 (=> (not res!870481) (not e!747961))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1311091 (= res!870481 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42850 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1311092 () Bool)

(declare-fun res!870480 () Bool)

(assert (=> b!1311092 (=> (not res!870480) (not e!747961))))

(declare-datatypes ((List!30205 0))(
  ( (Nil!30202) (Cons!30201 (h!31410 (_ BitVec 64)) (t!43818 List!30205)) )
))
(declare-fun arrayNoDuplicates!0 (array!87647 (_ BitVec 32) List!30205) Bool)

(assert (=> b!1311092 (= res!870480 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30202))))

(declare-fun res!870479 () Bool)

(assert (=> start!110818 (=> (not res!870479) (not e!747961))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110818 (= res!870479 (validMask!0 mask!2040))))

(assert (=> start!110818 e!747961))

(assert (=> start!110818 tp!104173))

(declare-fun array_inv!31951 (array!87647) Bool)

(assert (=> start!110818 (array_inv!31951 _keys!1628)))

(assert (=> start!110818 true))

(declare-fun tp_is_empty!35347 () Bool)

(assert (=> start!110818 tp_is_empty!35347))

(declare-fun e!747962 () Bool)

(declare-fun array_inv!31952 (array!87645) Bool)

(assert (=> start!110818 (and (array_inv!31952 _values!1354) e!747962)))

(declare-fun mapIsEmpty!54649 () Bool)

(assert (=> mapIsEmpty!54649 mapRes!54649))

(declare-fun b!1311093 () Bool)

(declare-fun res!870482 () Bool)

(assert (=> b!1311093 (=> (not res!870482) (not e!747961))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87647 (_ BitVec 32)) Bool)

(assert (=> b!1311093 (= res!870482 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1311094 () Bool)

(assert (=> b!1311094 (= e!747961 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585376 () Bool)

(declare-fun minValue!1296 () V!52233)

(declare-fun zeroValue!1296 () V!52233)

(declare-datatypes ((tuple2!23040 0))(
  ( (tuple2!23041 (_1!11530 (_ BitVec 64)) (_2!11530 V!52233)) )
))
(declare-datatypes ((List!30206 0))(
  ( (Nil!30203) (Cons!30202 (h!31411 tuple2!23040) (t!43819 List!30206)) )
))
(declare-datatypes ((ListLongMap!20709 0))(
  ( (ListLongMap!20710 (toList!10370 List!30206)) )
))
(declare-fun contains!8456 (ListLongMap!20709 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5326 (array!87647 array!87645 (_ BitVec 32) (_ BitVec 32) V!52233 V!52233 (_ BitVec 32) Int) ListLongMap!20709)

(assert (=> b!1311094 (= lt!585376 (contains!8456 (getCurrentListMap!5326 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1311095 () Bool)

(assert (=> b!1311095 (= e!747963 tp_is_empty!35347)))

(declare-fun b!1311096 () Bool)

(declare-fun e!747965 () Bool)

(assert (=> b!1311096 (= e!747962 (and e!747965 mapRes!54649))))

(declare-fun condMapEmpty!54649 () Bool)

(declare-fun mapDefault!54649 () ValueCell!16775)

