; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110626 () Bool)

(assert start!110626)

(declare-fun b_free!29425 () Bool)

(declare-fun b_next!29425 () Bool)

(assert (=> start!110626 (= b_free!29425 (not b_next!29425))))

(declare-fun tp!103598 () Bool)

(declare-fun b_and!47643 () Bool)

(assert (=> start!110626 (= tp!103598 b_and!47643)))

(declare-fun res!868586 () Bool)

(declare-fun e!746524 () Bool)

(assert (=> start!110626 (=> (not res!868586) (not e!746524))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110626 (= res!868586 (validMask!0 mask!2040))))

(assert (=> start!110626 e!746524))

(assert (=> start!110626 tp!103598))

(declare-datatypes ((array!87277 0))(
  ( (array!87278 (arr!42114 (Array (_ BitVec 32) (_ BitVec 64))) (size!42665 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87277)

(declare-fun array_inv!31831 (array!87277) Bool)

(assert (=> start!110626 (array_inv!31831 _keys!1628)))

(assert (=> start!110626 true))

(declare-fun tp_is_empty!35155 () Bool)

(assert (=> start!110626 tp_is_empty!35155))

(declare-datatypes ((V!51977 0))(
  ( (V!51978 (val!17652 Int)) )
))
(declare-datatypes ((ValueCell!16679 0))(
  ( (ValueCellFull!16679 (v!20277 V!51977)) (EmptyCell!16679) )
))
(declare-datatypes ((array!87279 0))(
  ( (array!87280 (arr!42115 (Array (_ BitVec 32) ValueCell!16679)) (size!42666 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87279)

(declare-fun e!746525 () Bool)

(declare-fun array_inv!31832 (array!87279) Bool)

(assert (=> start!110626 (and (array_inv!31832 _values!1354) e!746525)))

(declare-fun b!1308326 () Bool)

(declare-fun res!868585 () Bool)

(assert (=> b!1308326 (=> (not res!868585) (not e!746524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87277 (_ BitVec 32)) Bool)

(assert (=> b!1308326 (= res!868585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1308327 () Bool)

(declare-fun res!868578 () Bool)

(assert (=> b!1308327 (=> (not res!868578) (not e!746524))))

(declare-datatypes ((List!30065 0))(
  ( (Nil!30062) (Cons!30061 (h!31270 (_ BitVec 64)) (t!43678 List!30065)) )
))
(declare-fun arrayNoDuplicates!0 (array!87277 (_ BitVec 32) List!30065) Bool)

(assert (=> b!1308327 (= res!868578 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30062))))

(declare-fun b!1308328 () Bool)

(declare-fun e!746522 () Bool)

(assert (=> b!1308328 (= e!746522 tp_is_empty!35155)))

(declare-fun b!1308329 () Bool)

(declare-fun res!868580 () Bool)

(assert (=> b!1308329 (=> (not res!868580) (not e!746524))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!51977)

(declare-fun zeroValue!1296 () V!51977)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22892 0))(
  ( (tuple2!22893 (_1!11456 (_ BitVec 64)) (_2!11456 V!51977)) )
))
(declare-datatypes ((List!30066 0))(
  ( (Nil!30063) (Cons!30062 (h!31271 tuple2!22892) (t!43679 List!30066)) )
))
(declare-datatypes ((ListLongMap!20561 0))(
  ( (ListLongMap!20562 (toList!10296 List!30066)) )
))
(declare-fun contains!8382 (ListLongMap!20561 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5252 (array!87277 array!87279 (_ BitVec 32) (_ BitVec 32) V!51977 V!51977 (_ BitVec 32) Int) ListLongMap!20561)

(assert (=> b!1308329 (= res!868580 (contains!8382 (getCurrentListMap!5252 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1308330 () Bool)

(assert (=> b!1308330 (= e!746524 (not true))))

(assert (=> b!1308330 (contains!8382 (getCurrentListMap!5252 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))

(declare-datatypes ((Unit!43240 0))(
  ( (Unit!43241) )
))
(declare-fun lt!585088 () Unit!43240)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!10 (array!87277 array!87279 (_ BitVec 32) (_ BitVec 32) V!51977 V!51977 (_ BitVec 64) (_ BitVec 32) Int) Unit!43240)

(assert (=> b!1308330 (= lt!585088 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!10 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1308331 () Bool)

(declare-fun res!868584 () Bool)

(assert (=> b!1308331 (=> (not res!868584) (not e!746524))))

(assert (=> b!1308331 (= res!868584 (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1308332 () Bool)

(declare-fun res!868579 () Bool)

(assert (=> b!1308332 (=> (not res!868579) (not e!746524))))

(assert (=> b!1308332 (= res!868579 (not (= (select (arr!42114 _keys!1628) from!2020) k!1175)))))

(declare-fun b!1308333 () Bool)

(declare-fun res!868582 () Bool)

(assert (=> b!1308333 (=> (not res!868582) (not e!746524))))

(assert (=> b!1308333 (= res!868582 (and (= (size!42666 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42665 _keys!1628) (size!42666 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!54361 () Bool)

(declare-fun mapRes!54361 () Bool)

(assert (=> mapIsEmpty!54361 mapRes!54361))

(declare-fun b!1308334 () Bool)

(declare-fun res!868583 () Bool)

(assert (=> b!1308334 (=> (not res!868583) (not e!746524))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1308334 (= res!868583 (validKeyInArray!0 (select (arr!42114 _keys!1628) from!2020)))))

(declare-fun b!1308335 () Bool)

(declare-fun e!746523 () Bool)

(assert (=> b!1308335 (= e!746525 (and e!746523 mapRes!54361))))

(declare-fun condMapEmpty!54361 () Bool)

(declare-fun mapDefault!54361 () ValueCell!16679)

