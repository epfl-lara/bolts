; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82734 () Bool)

(assert start!82734)

(declare-fun b_free!18839 () Bool)

(declare-fun b_next!18839 () Bool)

(assert (=> start!82734 (= b_free!18839 (not b_next!18839))))

(declare-fun tp!65638 () Bool)

(declare-fun b_and!30345 () Bool)

(assert (=> start!82734 (= tp!65638 b_and!30345)))

(declare-fun b!964310 () Bool)

(declare-fun e!543671 () Bool)

(declare-fun e!543668 () Bool)

(assert (=> b!964310 (= e!543671 (not e!543668))))

(declare-fun res!645563 () Bool)

(assert (=> b!964310 (=> res!645563 e!543668)))

(declare-datatypes ((array!59355 0))(
  ( (array!59356 (arr!28542 (Array (_ BitVec 32) (_ BitVec 64))) (size!29022 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59355)

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!964310 (= res!645563 (or (bvslt (bvsub from!2084 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub from!2084 #b00000000000000000000000000000001) (size!29022 _keys!1686)) (bvslt i!803 (bvsub from!2084 #b00000000000000000000000000000001))))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33837 0))(
  ( (V!33838 (val!10871 Int)) )
))
(declare-datatypes ((ValueCell!10339 0))(
  ( (ValueCellFull!10339 (v!13429 V!33837)) (EmptyCell!10339) )
))
(declare-datatypes ((array!59357 0))(
  ( (array!59358 (arr!28543 (Array (_ BitVec 32) ValueCell!10339)) (size!29023 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59357)

(declare-fun minValue!1342 () V!33837)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33837)

(declare-datatypes ((tuple2!14054 0))(
  ( (tuple2!14055 (_1!7037 (_ BitVec 64)) (_2!7037 V!33837)) )
))
(declare-datatypes ((List!19932 0))(
  ( (Nil!19929) (Cons!19928 (h!21090 tuple2!14054) (t!28303 List!19932)) )
))
(declare-datatypes ((ListLongMap!12765 0))(
  ( (ListLongMap!12766 (toList!6398 List!19932)) )
))
(declare-fun contains!5452 (ListLongMap!12765 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3583 (array!59355 array!59357 (_ BitVec 32) (_ BitVec 32) V!33837 V!33837 (_ BitVec 32) Int) ListLongMap!12765)

(assert (=> b!964310 (contains!5452 (getCurrentListMap!3583 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28542 _keys!1686) i!803))))

(declare-datatypes ((Unit!32251 0))(
  ( (Unit!32252) )
))
(declare-fun lt!431051 () Unit!32251)

(declare-fun lemmaInListMapFromThenInFromMinusOne!33 (array!59355 array!59357 (_ BitVec 32) (_ BitVec 32) V!33837 V!33837 (_ BitVec 32) (_ BitVec 32) Int) Unit!32251)

(assert (=> b!964310 (= lt!431051 (lemmaInListMapFromThenInFromMinusOne!33 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!964311 () Bool)

(declare-fun res!645562 () Bool)

(assert (=> b!964311 (=> (not res!645562) (not e!543671))))

(assert (=> b!964311 (= res!645562 (contains!5452 (getCurrentListMap!3583 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28542 _keys!1686) i!803)))))

(declare-fun b!964312 () Bool)

(declare-fun res!645564 () Bool)

(assert (=> b!964312 (=> (not res!645564) (not e!543671))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!964312 (= res!645564 (bvsgt from!2084 newFrom!159))))

(declare-fun b!964313 () Bool)

(declare-fun e!543670 () Bool)

(declare-fun tp_is_empty!21641 () Bool)

(assert (=> b!964313 (= e!543670 tp_is_empty!21641)))

(declare-fun b!964314 () Bool)

(declare-fun res!645561 () Bool)

(assert (=> b!964314 (=> (not res!645561) (not e!543671))))

(assert (=> b!964314 (= res!645561 (and (= (size!29023 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29022 _keys!1686) (size!29023 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!964315 () Bool)

(declare-fun res!645565 () Bool)

(assert (=> b!964315 (=> (not res!645565) (not e!543671))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59355 (_ BitVec 32)) Bool)

(assert (=> b!964315 (= res!645565 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!964316 () Bool)

(declare-fun e!543669 () Bool)

(assert (=> b!964316 (= e!543669 tp_is_empty!21641)))

(declare-fun mapNonEmpty!34456 () Bool)

(declare-fun mapRes!34456 () Bool)

(declare-fun tp!65637 () Bool)

(assert (=> mapNonEmpty!34456 (= mapRes!34456 (and tp!65637 e!543669))))

(declare-fun mapRest!34456 () (Array (_ BitVec 32) ValueCell!10339))

(declare-fun mapValue!34456 () ValueCell!10339)

(declare-fun mapKey!34456 () (_ BitVec 32))

(assert (=> mapNonEmpty!34456 (= (arr!28543 _values!1400) (store mapRest!34456 mapKey!34456 mapValue!34456))))

(declare-fun mapIsEmpty!34456 () Bool)

(assert (=> mapIsEmpty!34456 mapRes!34456))

(declare-fun b!964317 () Bool)

(declare-fun e!543672 () Bool)

(assert (=> b!964317 (= e!543672 (and e!543670 mapRes!34456))))

(declare-fun condMapEmpty!34456 () Bool)

(declare-fun mapDefault!34456 () ValueCell!10339)

