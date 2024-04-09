; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110722 () Bool)

(assert start!110722)

(declare-fun b_free!29521 () Bool)

(declare-fun b_next!29521 () Bool)

(assert (=> start!110722 (= b_free!29521 (not b_next!29521))))

(declare-fun tp!103886 () Bool)

(declare-fun b_and!47739 () Bool)

(assert (=> start!110722 (= tp!103886 b_and!47739)))

(declare-fun b!1309622 () Bool)

(declare-fun res!869447 () Bool)

(declare-fun e!747243 () Bool)

(assert (=> b!1309622 (=> (not res!869447) (not e!747243))))

(declare-datatypes ((array!87459 0))(
  ( (array!87460 (arr!42205 (Array (_ BitVec 32) (_ BitVec 64))) (size!42756 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87459)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1309622 (= res!869447 (not (= (select (arr!42205 _keys!1628) from!2020) k!1175)))))

(declare-fun b!1309623 () Bool)

(declare-fun res!869442 () Bool)

(assert (=> b!1309623 (=> (not res!869442) (not e!747243))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87459 (_ BitVec 32)) Bool)

(assert (=> b!1309623 (= res!869442 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1309624 () Bool)

(declare-fun res!869448 () Bool)

(assert (=> b!1309624 (=> (not res!869448) (not e!747243))))

(declare-datatypes ((List!30130 0))(
  ( (Nil!30127) (Cons!30126 (h!31335 (_ BitVec 64)) (t!43743 List!30130)) )
))
(declare-fun arrayNoDuplicates!0 (array!87459 (_ BitVec 32) List!30130) Bool)

(assert (=> b!1309624 (= res!869448 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30127))))

(declare-fun b!1309626 () Bool)

(declare-fun res!869443 () Bool)

(assert (=> b!1309626 (=> (not res!869443) (not e!747243))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1309626 (= res!869443 (validKeyInArray!0 (select (arr!42205 _keys!1628) from!2020)))))

(declare-fun mapNonEmpty!54505 () Bool)

(declare-fun mapRes!54505 () Bool)

(declare-fun tp!103885 () Bool)

(declare-fun e!747241 () Bool)

(assert (=> mapNonEmpty!54505 (= mapRes!54505 (and tp!103885 e!747241))))

(declare-datatypes ((V!52105 0))(
  ( (V!52106 (val!17700 Int)) )
))
(declare-datatypes ((ValueCell!16727 0))(
  ( (ValueCellFull!16727 (v!20325 V!52105)) (EmptyCell!16727) )
))
(declare-fun mapValue!54505 () ValueCell!16727)

(declare-fun mapKey!54505 () (_ BitVec 32))

(declare-datatypes ((array!87461 0))(
  ( (array!87462 (arr!42206 (Array (_ BitVec 32) ValueCell!16727)) (size!42757 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87461)

(declare-fun mapRest!54505 () (Array (_ BitVec 32) ValueCell!16727))

(assert (=> mapNonEmpty!54505 (= (arr!42206 _values!1354) (store mapRest!54505 mapKey!54505 mapValue!54505))))

(declare-fun b!1309627 () Bool)

(assert (=> b!1309627 (= e!747243 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52105)

(declare-fun zeroValue!1296 () V!52105)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!22964 0))(
  ( (tuple2!22965 (_1!11492 (_ BitVec 64)) (_2!11492 V!52105)) )
))
(declare-datatypes ((List!30131 0))(
  ( (Nil!30128) (Cons!30127 (h!31336 tuple2!22964) (t!43744 List!30131)) )
))
(declare-datatypes ((ListLongMap!20633 0))(
  ( (ListLongMap!20634 (toList!10332 List!30131)) )
))
(declare-fun contains!8418 (ListLongMap!20633 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5288 (array!87459 array!87461 (_ BitVec 32) (_ BitVec 32) V!52105 V!52105 (_ BitVec 32) Int) ListLongMap!20633)

(assert (=> b!1309627 (contains!8418 (getCurrentListMap!5288 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))

(declare-datatypes ((Unit!43254 0))(
  ( (Unit!43255) )
))
(declare-fun lt!585232 () Unit!43254)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!1 (array!87459 array!87461 (_ BitVec 32) (_ BitVec 32) V!52105 V!52105 (_ BitVec 64) (_ BitVec 32) Int) Unit!43254)

(assert (=> b!1309627 (= lt!585232 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!1 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k!1175 from!2020 defaultEntry!1357))))

(declare-fun mapIsEmpty!54505 () Bool)

(assert (=> mapIsEmpty!54505 mapRes!54505))

(declare-fun b!1309628 () Bool)

(declare-fun res!869445 () Bool)

(assert (=> b!1309628 (=> (not res!869445) (not e!747243))))

(assert (=> b!1309628 (= res!869445 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42756 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1309629 () Bool)

(declare-fun res!869446 () Bool)

(assert (=> b!1309629 (=> (not res!869446) (not e!747243))))

(assert (=> b!1309629 (= res!869446 (contains!8418 (getCurrentListMap!5288 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1309625 () Bool)

(declare-fun e!747242 () Bool)

(declare-fun tp_is_empty!35251 () Bool)

(assert (=> b!1309625 (= e!747242 tp_is_empty!35251)))

(declare-fun res!869444 () Bool)

(assert (=> start!110722 (=> (not res!869444) (not e!747243))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110722 (= res!869444 (validMask!0 mask!2040))))

(assert (=> start!110722 e!747243))

(assert (=> start!110722 tp!103886))

(declare-fun array_inv!31889 (array!87459) Bool)

(assert (=> start!110722 (array_inv!31889 _keys!1628)))

(assert (=> start!110722 true))

(assert (=> start!110722 tp_is_empty!35251))

(declare-fun e!747245 () Bool)

(declare-fun array_inv!31890 (array!87461) Bool)

(assert (=> start!110722 (and (array_inv!31890 _values!1354) e!747245)))

(declare-fun b!1309630 () Bool)

(declare-fun res!869449 () Bool)

(assert (=> b!1309630 (=> (not res!869449) (not e!747243))))

(assert (=> b!1309630 (= res!869449 (and (= (size!42757 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42756 _keys!1628) (size!42757 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1309631 () Bool)

(declare-fun res!869450 () Bool)

(assert (=> b!1309631 (=> (not res!869450) (not e!747243))))

(assert (=> b!1309631 (= res!869450 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1309632 () Bool)

(assert (=> b!1309632 (= e!747241 tp_is_empty!35251)))

(declare-fun b!1309633 () Bool)

(assert (=> b!1309633 (= e!747245 (and e!747242 mapRes!54505))))

(declare-fun condMapEmpty!54505 () Bool)

(declare-fun mapDefault!54505 () ValueCell!16727)

