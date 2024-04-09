; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95864 () Bool)

(assert start!95864)

(declare-fun b_free!22481 () Bool)

(declare-fun b_next!22481 () Bool)

(assert (=> start!95864 (= b_free!22481 (not b_next!22481))))

(declare-fun tp!79293 () Bool)

(declare-fun b_and!35655 () Bool)

(assert (=> start!95864 (= tp!79293 b_and!35655)))

(declare-fun b!1084301 () Bool)

(declare-fun e!619523 () Bool)

(declare-fun tp_is_empty!26483 () Bool)

(assert (=> b!1084301 (= e!619523 tp_is_empty!26483)))

(declare-fun b!1084302 () Bool)

(declare-fun res!722951 () Bool)

(declare-fun e!619522 () Bool)

(assert (=> b!1084302 (=> (not res!722951) (not e!619522))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1084302 (= res!722951 (validKeyInArray!0 k!904))))

(declare-fun b!1084303 () Bool)

(declare-fun res!722954 () Bool)

(assert (=> b!1084303 (=> (not res!722954) (not e!619522))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!69868 0))(
  ( (array!69869 (arr!33604 (Array (_ BitVec 32) (_ BitVec 64))) (size!34141 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69868)

(assert (=> b!1084303 (= res!722954 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34141 _keys!1070))))))

(declare-fun b!1084304 () Bool)

(declare-fun e!619524 () Bool)

(assert (=> b!1084304 (= e!619522 e!619524)))

(declare-fun res!722949 () Bool)

(assert (=> b!1084304 (=> (not res!722949) (not e!619524))))

(declare-fun lt!480607 () array!69868)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69868 (_ BitVec 32)) Bool)

(assert (=> b!1084304 (= res!722949 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!480607 mask!1414))))

(assert (=> b!1084304 (= lt!480607 (array!69869 (store (arr!33604 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34141 _keys!1070)))))

(declare-fun b!1084305 () Bool)

(declare-fun res!722952 () Bool)

(assert (=> b!1084305 (=> (not res!722952) (not e!619524))))

(declare-datatypes ((List!23562 0))(
  ( (Nil!23559) (Cons!23558 (h!24767 (_ BitVec 64)) (t!33108 List!23562)) )
))
(declare-fun arrayNoDuplicates!0 (array!69868 (_ BitVec 32) List!23562) Bool)

(assert (=> b!1084305 (= res!722952 (arrayNoDuplicates!0 lt!480607 #b00000000000000000000000000000000 Nil!23559))))

(declare-fun mapNonEmpty!41479 () Bool)

(declare-fun mapRes!41479 () Bool)

(declare-fun tp!79292 () Bool)

(declare-fun e!619520 () Bool)

(assert (=> mapNonEmpty!41479 (= mapRes!41479 (and tp!79292 e!619520))))

(declare-datatypes ((V!40437 0))(
  ( (V!40438 (val!13298 Int)) )
))
(declare-datatypes ((ValueCell!12532 0))(
  ( (ValueCellFull!12532 (v!15920 V!40437)) (EmptyCell!12532) )
))
(declare-fun mapRest!41479 () (Array (_ BitVec 32) ValueCell!12532))

(declare-datatypes ((array!69870 0))(
  ( (array!69871 (arr!33605 (Array (_ BitVec 32) ValueCell!12532)) (size!34142 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69870)

(declare-fun mapValue!41479 () ValueCell!12532)

(declare-fun mapKey!41479 () (_ BitVec 32))

(assert (=> mapNonEmpty!41479 (= (arr!33605 _values!874) (store mapRest!41479 mapKey!41479 mapValue!41479))))

(declare-fun b!1084306 () Bool)

(declare-fun e!619525 () Bool)

(assert (=> b!1084306 (= e!619525 (and e!619523 mapRes!41479))))

(declare-fun condMapEmpty!41479 () Bool)

(declare-fun mapDefault!41479 () ValueCell!12532)

