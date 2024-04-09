; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96286 () Bool)

(assert start!96286)

(declare-fun b_free!22903 () Bool)

(declare-fun b_next!22903 () Bool)

(assert (=> start!96286 (= b_free!22903 (not b_next!22903))))

(declare-fun tp!80559 () Bool)

(declare-fun b_and!36499 () Bool)

(assert (=> start!96286 (= tp!80559 b_and!36499)))

(declare-fun b!1093381 () Bool)

(declare-fun res!729708 () Bool)

(declare-fun e!624357 () Bool)

(assert (=> b!1093381 (=> (not res!729708) (not e!624357))))

(declare-datatypes ((array!70684 0))(
  ( (array!70685 (arr!34012 (Array (_ BitVec 32) (_ BitVec 64))) (size!34549 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70684)

(declare-datatypes ((List!23900 0))(
  ( (Nil!23897) (Cons!23896 (h!25105 (_ BitVec 64)) (t!33868 List!23900)) )
))
(declare-fun arrayNoDuplicates!0 (array!70684 (_ BitVec 32) List!23900) Bool)

(assert (=> b!1093381 (= res!729708 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23897))))

(declare-fun mapNonEmpty!42112 () Bool)

(declare-fun mapRes!42112 () Bool)

(declare-fun tp!80558 () Bool)

(declare-fun e!624356 () Bool)

(assert (=> mapNonEmpty!42112 (= mapRes!42112 (and tp!80558 e!624356))))

(declare-fun mapKey!42112 () (_ BitVec 32))

(declare-datatypes ((V!41001 0))(
  ( (V!41002 (val!13509 Int)) )
))
(declare-datatypes ((ValueCell!12743 0))(
  ( (ValueCellFull!12743 (v!16131 V!41001)) (EmptyCell!12743) )
))
(declare-fun mapRest!42112 () (Array (_ BitVec 32) ValueCell!12743))

(declare-datatypes ((array!70686 0))(
  ( (array!70687 (arr!34013 (Array (_ BitVec 32) ValueCell!12743)) (size!34550 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70686)

(declare-fun mapValue!42112 () ValueCell!12743)

(assert (=> mapNonEmpty!42112 (= (arr!34013 _values!874) (store mapRest!42112 mapKey!42112 mapValue!42112))))

(declare-fun res!729709 () Bool)

(assert (=> start!96286 (=> (not res!729709) (not e!624357))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96286 (= res!729709 (validMask!0 mask!1414))))

(assert (=> start!96286 e!624357))

(assert (=> start!96286 tp!80559))

(assert (=> start!96286 true))

(declare-fun tp_is_empty!26905 () Bool)

(assert (=> start!96286 tp_is_empty!26905))

(declare-fun array_inv!26068 (array!70684) Bool)

(assert (=> start!96286 (array_inv!26068 _keys!1070)))

(declare-fun e!624355 () Bool)

(declare-fun array_inv!26069 (array!70686) Bool)

(assert (=> start!96286 (and (array_inv!26069 _values!874) e!624355)))

(declare-fun b!1093382 () Bool)

(declare-fun e!624353 () Bool)

(assert (=> b!1093382 (= e!624357 e!624353)))

(declare-fun res!729716 () Bool)

(assert (=> b!1093382 (=> (not res!729716) (not e!624353))))

(declare-fun lt!488974 () array!70684)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70684 (_ BitVec 32)) Bool)

(assert (=> b!1093382 (= res!729716 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!488974 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1093382 (= lt!488974 (array!70685 (store (arr!34012 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34549 _keys!1070)))))

(declare-fun b!1093383 () Bool)

(declare-fun res!729715 () Bool)

(assert (=> b!1093383 (=> (not res!729715) (not e!624357))))

(assert (=> b!1093383 (= res!729715 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34549 _keys!1070))))))

(declare-fun b!1093384 () Bool)

(declare-fun res!729714 () Bool)

(assert (=> b!1093384 (=> (not res!729714) (not e!624357))))

(assert (=> b!1093384 (= res!729714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1093385 () Bool)

(declare-fun res!729713 () Bool)

(assert (=> b!1093385 (=> (not res!729713) (not e!624353))))

(assert (=> b!1093385 (= res!729713 (arrayNoDuplicates!0 lt!488974 #b00000000000000000000000000000000 Nil!23897))))

(declare-fun b!1093386 () Bool)

(assert (=> b!1093386 (= e!624356 tp_is_empty!26905)))

(declare-fun b!1093387 () Bool)

(declare-fun res!729711 () Bool)

(assert (=> b!1093387 (=> (not res!729711) (not e!624357))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1093387 (= res!729711 (and (= (size!34550 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34549 _keys!1070) (size!34550 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1093388 () Bool)

(declare-fun e!624354 () Bool)

(assert (=> b!1093388 (= e!624355 (and e!624354 mapRes!42112))))

(declare-fun condMapEmpty!42112 () Bool)

(declare-fun mapDefault!42112 () ValueCell!12743)

