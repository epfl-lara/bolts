; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110696 () Bool)

(assert start!110696)

(declare-fun b_free!29495 () Bool)

(declare-fun b_next!29495 () Bool)

(assert (=> start!110696 (= b_free!29495 (not b_next!29495))))

(declare-fun tp!103808 () Bool)

(declare-fun b_and!47713 () Bool)

(assert (=> start!110696 (= tp!103808 b_and!47713)))

(declare-fun mapIsEmpty!54466 () Bool)

(declare-fun mapRes!54466 () Bool)

(assert (=> mapIsEmpty!54466 mapRes!54466))

(declare-fun b!1309302 () Bool)

(declare-fun e!747047 () Bool)

(declare-fun tp_is_empty!35225 () Bool)

(assert (=> b!1309302 (= e!747047 tp_is_empty!35225)))

(declare-fun b!1309303 () Bool)

(declare-fun e!747049 () Bool)

(assert (=> b!1309303 (= e!747049 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87411 0))(
  ( (array!87412 (arr!42181 (Array (_ BitVec 32) (_ BitVec 64))) (size!42732 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87411)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52069 0))(
  ( (V!52070 (val!17687 Int)) )
))
(declare-fun minValue!1296 () V!52069)

(declare-datatypes ((ValueCell!16714 0))(
  ( (ValueCellFull!16714 (v!20312 V!52069)) (EmptyCell!16714) )
))
(declare-datatypes ((array!87413 0))(
  ( (array!87414 (arr!42182 (Array (_ BitVec 32) ValueCell!16714)) (size!42733 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87413)

(declare-fun zeroValue!1296 () V!52069)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun lt!585193 () Bool)

(declare-datatypes ((tuple2!22944 0))(
  ( (tuple2!22945 (_1!11482 (_ BitVec 64)) (_2!11482 V!52069)) )
))
(declare-datatypes ((List!30114 0))(
  ( (Nil!30111) (Cons!30110 (h!31319 tuple2!22944) (t!43727 List!30114)) )
))
(declare-datatypes ((ListLongMap!20613 0))(
  ( (ListLongMap!20614 (toList!10322 List!30114)) )
))
(declare-fun contains!8408 (ListLongMap!20613 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5278 (array!87411 array!87413 (_ BitVec 32) (_ BitVec 32) V!52069 V!52069 (_ BitVec 32) Int) ListLongMap!20613)

(assert (=> b!1309303 (= lt!585193 (contains!8408 (getCurrentListMap!5278 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1309304 () Bool)

(declare-fun res!869240 () Bool)

(assert (=> b!1309304 (=> (not res!869240) (not e!747049))))

(assert (=> b!1309304 (= res!869240 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42732 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1309306 () Bool)

(declare-fun res!869241 () Bool)

(assert (=> b!1309306 (=> (not res!869241) (not e!747049))))

(assert (=> b!1309306 (= res!869241 (and (= (size!42733 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42732 _keys!1628) (size!42733 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1309307 () Bool)

(declare-fun e!747046 () Bool)

(assert (=> b!1309307 (= e!747046 tp_is_empty!35225)))

(declare-fun b!1309308 () Bool)

(declare-fun res!869243 () Bool)

(assert (=> b!1309308 (=> (not res!869243) (not e!747049))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87411 (_ BitVec 32)) Bool)

(assert (=> b!1309308 (= res!869243 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1309309 () Bool)

(declare-fun e!747048 () Bool)

(assert (=> b!1309309 (= e!747048 (and e!747046 mapRes!54466))))

(declare-fun condMapEmpty!54466 () Bool)

(declare-fun mapDefault!54466 () ValueCell!16714)

