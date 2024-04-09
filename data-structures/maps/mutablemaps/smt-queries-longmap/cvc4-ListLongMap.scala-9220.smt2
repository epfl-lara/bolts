; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110708 () Bool)

(assert start!110708)

(declare-fun b_free!29507 () Bool)

(declare-fun b_next!29507 () Bool)

(assert (=> start!110708 (= b_free!29507 (not b_next!29507))))

(declare-fun tp!103844 () Bool)

(declare-fun b_and!47725 () Bool)

(assert (=> start!110708 (= tp!103844 b_and!47725)))

(declare-fun b!1309446 () Bool)

(declare-fun res!869332 () Bool)

(declare-fun e!747139 () Bool)

(assert (=> b!1309446 (=> (not res!869332) (not e!747139))))

(declare-datatypes ((array!87431 0))(
  ( (array!87432 (arr!42191 (Array (_ BitVec 32) (_ BitVec 64))) (size!42742 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87431)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87431 (_ BitVec 32)) Bool)

(assert (=> b!1309446 (= res!869332 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1309447 () Bool)

(assert (=> b!1309447 (= e!747139 false)))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52085 0))(
  ( (V!52086 (val!17693 Int)) )
))
(declare-fun minValue!1296 () V!52085)

(declare-datatypes ((ValueCell!16720 0))(
  ( (ValueCellFull!16720 (v!20318 V!52085)) (EmptyCell!16720) )
))
(declare-datatypes ((array!87433 0))(
  ( (array!87434 (arr!42192 (Array (_ BitVec 32) ValueCell!16720)) (size!42743 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87433)

(declare-fun zeroValue!1296 () V!52085)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585211 () Bool)

(declare-datatypes ((tuple2!22952 0))(
  ( (tuple2!22953 (_1!11486 (_ BitVec 64)) (_2!11486 V!52085)) )
))
(declare-datatypes ((List!30121 0))(
  ( (Nil!30118) (Cons!30117 (h!31326 tuple2!22952) (t!43734 List!30121)) )
))
(declare-datatypes ((ListLongMap!20621 0))(
  ( (ListLongMap!20622 (toList!10326 List!30121)) )
))
(declare-fun contains!8412 (ListLongMap!20621 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5282 (array!87431 array!87433 (_ BitVec 32) (_ BitVec 32) V!52085 V!52085 (_ BitVec 32) Int) ListLongMap!20621)

(assert (=> b!1309447 (= lt!585211 (contains!8412 (getCurrentListMap!5282 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1309448 () Bool)

(declare-fun e!747137 () Bool)

(declare-fun tp_is_empty!35237 () Bool)

(assert (=> b!1309448 (= e!747137 tp_is_empty!35237)))

(declare-fun b!1309449 () Bool)

(declare-fun res!869333 () Bool)

(assert (=> b!1309449 (=> (not res!869333) (not e!747139))))

(assert (=> b!1309449 (= res!869333 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42742 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1309450 () Bool)

(declare-fun res!869331 () Bool)

(assert (=> b!1309450 (=> (not res!869331) (not e!747139))))

(assert (=> b!1309450 (= res!869331 (and (= (size!42743 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42742 _keys!1628) (size!42743 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1309451 () Bool)

(declare-fun e!747138 () Bool)

(assert (=> b!1309451 (= e!747138 tp_is_empty!35237)))

(declare-fun res!869329 () Bool)

(assert (=> start!110708 (=> (not res!869329) (not e!747139))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110708 (= res!869329 (validMask!0 mask!2040))))

(assert (=> start!110708 e!747139))

(assert (=> start!110708 tp!103844))

(declare-fun array_inv!31883 (array!87431) Bool)

(assert (=> start!110708 (array_inv!31883 _keys!1628)))

(assert (=> start!110708 true))

(assert (=> start!110708 tp_is_empty!35237))

(declare-fun e!747140 () Bool)

(declare-fun array_inv!31884 (array!87433) Bool)

(assert (=> start!110708 (and (array_inv!31884 _values!1354) e!747140)))

(declare-fun mapNonEmpty!54484 () Bool)

(declare-fun mapRes!54484 () Bool)

(declare-fun tp!103843 () Bool)

(assert (=> mapNonEmpty!54484 (= mapRes!54484 (and tp!103843 e!747137))))

(declare-fun mapKey!54484 () (_ BitVec 32))

(declare-fun mapRest!54484 () (Array (_ BitVec 32) ValueCell!16720))

(declare-fun mapValue!54484 () ValueCell!16720)

(assert (=> mapNonEmpty!54484 (= (arr!42192 _values!1354) (store mapRest!54484 mapKey!54484 mapValue!54484))))

(declare-fun mapIsEmpty!54484 () Bool)

(assert (=> mapIsEmpty!54484 mapRes!54484))

(declare-fun b!1309452 () Bool)

(assert (=> b!1309452 (= e!747140 (and e!747138 mapRes!54484))))

(declare-fun condMapEmpty!54484 () Bool)

(declare-fun mapDefault!54484 () ValueCell!16720)

