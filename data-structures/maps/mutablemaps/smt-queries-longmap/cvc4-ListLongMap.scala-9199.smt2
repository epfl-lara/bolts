; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110582 () Bool)

(assert start!110582)

(declare-fun b_free!29381 () Bool)

(declare-fun b_next!29381 () Bool)

(assert (=> start!110582 (= b_free!29381 (not b_next!29381))))

(declare-fun tp!103466 () Bool)

(declare-fun b_and!47599 () Bool)

(assert (=> start!110582 (= tp!103466 b_and!47599)))

(declare-fun mapIsEmpty!54295 () Bool)

(declare-fun mapRes!54295 () Bool)

(assert (=> mapIsEmpty!54295 mapRes!54295))

(declare-fun res!868061 () Bool)

(declare-fun e!746191 () Bool)

(assert (=> start!110582 (=> (not res!868061) (not e!746191))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110582 (= res!868061 (validMask!0 mask!2040))))

(assert (=> start!110582 e!746191))

(assert (=> start!110582 tp!103466))

(declare-datatypes ((array!87195 0))(
  ( (array!87196 (arr!42073 (Array (_ BitVec 32) (_ BitVec 64))) (size!42624 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87195)

(declare-fun array_inv!31801 (array!87195) Bool)

(assert (=> start!110582 (array_inv!31801 _keys!1628)))

(assert (=> start!110582 true))

(declare-fun tp_is_empty!35111 () Bool)

(assert (=> start!110582 tp_is_empty!35111))

(declare-datatypes ((V!51917 0))(
  ( (V!51918 (val!17630 Int)) )
))
(declare-datatypes ((ValueCell!16657 0))(
  ( (ValueCellFull!16657 (v!20255 V!51917)) (EmptyCell!16657) )
))
(declare-datatypes ((array!87197 0))(
  ( (array!87198 (arr!42074 (Array (_ BitVec 32) ValueCell!16657)) (size!42625 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87197)

(declare-fun e!746195 () Bool)

(declare-fun array_inv!31802 (array!87197) Bool)

(assert (=> start!110582 (and (array_inv!31802 _values!1354) e!746195)))

(declare-fun b!1307610 () Bool)

(declare-fun res!868060 () Bool)

(assert (=> b!1307610 (=> (not res!868060) (not e!746191))))

(declare-datatypes ((List!30035 0))(
  ( (Nil!30032) (Cons!30031 (h!31240 (_ BitVec 64)) (t!43648 List!30035)) )
))
(declare-fun arrayNoDuplicates!0 (array!87195 (_ BitVec 32) List!30035) Bool)

(assert (=> b!1307610 (= res!868060 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30032))))

(declare-fun b!1307611 () Bool)

(declare-fun res!868062 () Bool)

(assert (=> b!1307611 (=> (not res!868062) (not e!746191))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1307611 (= res!868062 (and (= (size!42625 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42624 _keys!1628) (size!42625 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1307612 () Bool)

(declare-fun e!746194 () Bool)

(assert (=> b!1307612 (= e!746194 tp_is_empty!35111)))

(declare-fun b!1307613 () Bool)

(assert (=> b!1307613 (= e!746191 false)))

(declare-fun lt!585022 () Bool)

(declare-fun defaultEntry!1357 () Int)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!51917)

(declare-fun zeroValue!1296 () V!51917)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22862 0))(
  ( (tuple2!22863 (_1!11441 (_ BitVec 64)) (_2!11441 V!51917)) )
))
(declare-datatypes ((List!30036 0))(
  ( (Nil!30033) (Cons!30032 (h!31241 tuple2!22862) (t!43649 List!30036)) )
))
(declare-datatypes ((ListLongMap!20531 0))(
  ( (ListLongMap!20532 (toList!10281 List!30036)) )
))
(declare-fun contains!8367 (ListLongMap!20531 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5237 (array!87195 array!87197 (_ BitVec 32) (_ BitVec 32) V!51917 V!51917 (_ BitVec 32) Int) ListLongMap!20531)

(assert (=> b!1307613 (= lt!585022 (contains!8367 (getCurrentListMap!5237 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1307614 () Bool)

(declare-fun res!868063 () Bool)

(assert (=> b!1307614 (=> (not res!868063) (not e!746191))))

(assert (=> b!1307614 (= res!868063 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42624 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!54295 () Bool)

(declare-fun tp!103465 () Bool)

(declare-fun e!746192 () Bool)

(assert (=> mapNonEmpty!54295 (= mapRes!54295 (and tp!103465 e!746192))))

(declare-fun mapValue!54295 () ValueCell!16657)

(declare-fun mapKey!54295 () (_ BitVec 32))

(declare-fun mapRest!54295 () (Array (_ BitVec 32) ValueCell!16657))

(assert (=> mapNonEmpty!54295 (= (arr!42074 _values!1354) (store mapRest!54295 mapKey!54295 mapValue!54295))))

(declare-fun b!1307615 () Bool)

(assert (=> b!1307615 (= e!746195 (and e!746194 mapRes!54295))))

(declare-fun condMapEmpty!54295 () Bool)

(declare-fun mapDefault!54295 () ValueCell!16657)

