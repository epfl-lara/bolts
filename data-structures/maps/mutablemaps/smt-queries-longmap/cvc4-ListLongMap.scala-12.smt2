; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!454 () Bool)

(assert start!454)

(declare-fun mapIsEmpty!29 () Bool)

(declare-fun mapRes!29 () Bool)

(assert (=> mapIsEmpty!29 mapRes!29))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((array!47 0))(
  ( (array!48 (arr!22 (Array (_ BitVec 32) (_ BitVec 64))) (size!84 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!47)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun e!1035 () Bool)

(declare-fun b!2693 () Bool)

(declare-datatypes ((V!255 0))(
  ( (V!256 (val!35 Int)) )
))
(declare-datatypes ((ValueCell!13 0))(
  ( (ValueCellFull!13 (v!1121 V!255)) (EmptyCell!13) )
))
(declare-datatypes ((array!49 0))(
  ( (array!50 (arr!23 (Array (_ BitVec 32) ValueCell!13)) (size!85 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!49)

(assert (=> b!2693 (= e!1035 (and (= (size!85 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!84 _keys!1806) (size!85 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011) (not (= (size!84 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250)))))))

(declare-fun res!4808 () Bool)

(assert (=> start!454 (=> (not res!4808) (not e!1035))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!454 (= res!4808 (validMask!0 mask!2250))))

(assert (=> start!454 e!1035))

(assert (=> start!454 true))

(declare-fun e!1037 () Bool)

(declare-fun array_inv!11 (array!49) Bool)

(assert (=> start!454 (and (array_inv!11 _values!1492) e!1037)))

(declare-fun array_inv!12 (array!47) Bool)

(assert (=> start!454 (array_inv!12 _keys!1806)))

(declare-fun b!2694 () Bool)

(declare-fun e!1038 () Bool)

(declare-fun tp_is_empty!59 () Bool)

(assert (=> b!2694 (= e!1038 tp_is_empty!59)))

(declare-fun mapNonEmpty!29 () Bool)

(declare-fun tp!269 () Bool)

(declare-fun e!1036 () Bool)

(assert (=> mapNonEmpty!29 (= mapRes!29 (and tp!269 e!1036))))

(declare-fun mapValue!29 () ValueCell!13)

(declare-fun mapKey!29 () (_ BitVec 32))

(declare-fun mapRest!29 () (Array (_ BitVec 32) ValueCell!13))

(assert (=> mapNonEmpty!29 (= (arr!23 _values!1492) (store mapRest!29 mapKey!29 mapValue!29))))

(declare-fun b!2695 () Bool)

(assert (=> b!2695 (= e!1036 tp_is_empty!59)))

(declare-fun b!2696 () Bool)

(assert (=> b!2696 (= e!1037 (and e!1038 mapRes!29))))

(declare-fun condMapEmpty!29 () Bool)

(declare-fun mapDefault!29 () ValueCell!13)

