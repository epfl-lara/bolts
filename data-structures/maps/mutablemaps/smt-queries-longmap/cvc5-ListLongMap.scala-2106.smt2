; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35812 () Bool)

(assert start!35812)

(declare-fun b!359421 () Bool)

(declare-fun e!220194 () Bool)

(assert (=> b!359421 (= e!220194 false)))

(declare-fun lt!166333 () Bool)

(declare-datatypes ((array!20035 0))(
  ( (array!20036 (arr!9508 (Array (_ BitVec 32) (_ BitVec 64))) (size!9860 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20035)

(declare-datatypes ((List!5497 0))(
  ( (Nil!5494) (Cons!5493 (h!6349 (_ BitVec 64)) (t!10655 List!5497)) )
))
(declare-fun arrayNoDuplicates!0 (array!20035 (_ BitVec 32) List!5497) Bool)

(assert (=> b!359421 (= lt!166333 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5494))))

(declare-fun b!359422 () Bool)

(declare-fun res!199826 () Bool)

(assert (=> b!359422 (=> (not res!199826) (not e!220194))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((V!11987 0))(
  ( (V!11988 (val!4173 Int)) )
))
(declare-datatypes ((ValueCell!3785 0))(
  ( (ValueCellFull!3785 (v!6363 V!11987)) (EmptyCell!3785) )
))
(declare-datatypes ((array!20037 0))(
  ( (array!20038 (arr!9509 (Array (_ BitVec 32) ValueCell!3785)) (size!9861 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20037)

(assert (=> b!359422 (= res!199826 (and (= (size!9861 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9860 _keys!1456) (size!9861 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!359423 () Bool)

(declare-fun e!220192 () Bool)

(declare-fun tp_is_empty!8257 () Bool)

(assert (=> b!359423 (= e!220192 tp_is_empty!8257)))

(declare-fun mapNonEmpty!13893 () Bool)

(declare-fun mapRes!13893 () Bool)

(declare-fun tp!27960 () Bool)

(assert (=> mapNonEmpty!13893 (= mapRes!13893 (and tp!27960 e!220192))))

(declare-fun mapRest!13893 () (Array (_ BitVec 32) ValueCell!3785))

(declare-fun mapKey!13893 () (_ BitVec 32))

(declare-fun mapValue!13893 () ValueCell!3785)

(assert (=> mapNonEmpty!13893 (= (arr!9509 _values!1208) (store mapRest!13893 mapKey!13893 mapValue!13893))))

(declare-fun b!359424 () Bool)

(declare-fun e!220196 () Bool)

(declare-fun e!220195 () Bool)

(assert (=> b!359424 (= e!220196 (and e!220195 mapRes!13893))))

(declare-fun condMapEmpty!13893 () Bool)

(declare-fun mapDefault!13893 () ValueCell!3785)

