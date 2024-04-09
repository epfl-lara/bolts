; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20662 () Bool)

(assert start!20662)

(declare-fun b_free!5309 () Bool)

(declare-fun b_next!5309 () Bool)

(assert (=> start!20662 (= b_free!5309 (not b_next!5309))))

(declare-fun tp!18959 () Bool)

(declare-fun b_and!12073 () Bool)

(assert (=> start!20662 (= tp!18959 b_and!12073)))

(declare-fun b!206164 () Bool)

(declare-fun e!134777 () Bool)

(declare-fun e!134776 () Bool)

(assert (=> b!206164 (= e!134777 e!134776)))

(declare-fun res!99832 () Bool)

(assert (=> b!206164 (=> res!99832 e!134776)))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!206164 (= res!99832 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!6533 0))(
  ( (V!6534 (val!2627 Int)) )
))
(declare-datatypes ((tuple2!3986 0))(
  ( (tuple2!3987 (_1!2003 (_ BitVec 64)) (_2!2003 V!6533)) )
))
(declare-datatypes ((List!2902 0))(
  ( (Nil!2899) (Cons!2898 (h!3540 tuple2!3986) (t!7841 List!2902)) )
))
(declare-datatypes ((ListLongMap!2913 0))(
  ( (ListLongMap!2914 (toList!1472 List!2902)) )
))
(declare-fun lt!105364 () ListLongMap!2913)

(declare-fun lt!105370 () ListLongMap!2913)

(assert (=> b!206164 (= lt!105364 lt!105370)))

(declare-fun lt!105365 () ListLongMap!2913)

(declare-fun lt!105366 () tuple2!3986)

(declare-fun +!489 (ListLongMap!2913 tuple2!3986) ListLongMap!2913)

(assert (=> b!206164 (= lt!105370 (+!489 lt!105365 lt!105366))))

(declare-fun lt!105369 () ListLongMap!2913)

(declare-fun lt!105368 () ListLongMap!2913)

(assert (=> b!206164 (= lt!105369 lt!105368)))

(declare-fun lt!105362 () ListLongMap!2913)

(assert (=> b!206164 (= lt!105368 (+!489 lt!105362 lt!105366))))

(declare-fun lt!105373 () ListLongMap!2913)

(assert (=> b!206164 (= lt!105369 (+!489 lt!105373 lt!105366))))

(declare-fun minValue!615 () V!6533)

(assert (=> b!206164 (= lt!105366 (tuple2!3987 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!206165 () Bool)

(declare-fun e!134779 () Bool)

(assert (=> b!206165 (= e!134779 (not e!134777))))

(declare-fun res!99834 () Bool)

(assert (=> b!206165 (=> res!99834 e!134777)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!206165 (= res!99834 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((ValueCell!2239 0))(
  ( (ValueCellFull!2239 (v!4593 V!6533)) (EmptyCell!2239) )
))
(declare-datatypes ((array!9540 0))(
  ( (array!9541 (arr!4520 (Array (_ BitVec 32) ValueCell!2239)) (size!4845 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9540)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6533)

(declare-datatypes ((array!9542 0))(
  ( (array!9543 (arr!4521 (Array (_ BitVec 32) (_ BitVec 64))) (size!4846 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9542)

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!1035 (array!9542 array!9540 (_ BitVec 32) (_ BitVec 32) V!6533 V!6533 (_ BitVec 32) Int) ListLongMap!2913)

(assert (=> b!206165 (= lt!105364 (getCurrentListMap!1035 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105372 () array!9540)

(assert (=> b!206165 (= lt!105369 (getCurrentListMap!1035 _keys!825 lt!105372 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!206165 (and (= lt!105373 lt!105362) (= lt!105362 lt!105373))))

(declare-fun lt!105367 () tuple2!3986)

(assert (=> b!206165 (= lt!105362 (+!489 lt!105365 lt!105367))))

(declare-fun v!520 () V!6533)

(assert (=> b!206165 (= lt!105367 (tuple2!3987 k!843 v!520))))

(declare-datatypes ((Unit!6273 0))(
  ( (Unit!6274) )
))
(declare-fun lt!105363 () Unit!6273)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!148 (array!9542 array!9540 (_ BitVec 32) (_ BitVec 32) V!6533 V!6533 (_ BitVec 32) (_ BitVec 64) V!6533 (_ BitVec 32) Int) Unit!6273)

(assert (=> b!206165 (= lt!105363 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!148 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!406 (array!9542 array!9540 (_ BitVec 32) (_ BitVec 32) V!6533 V!6533 (_ BitVec 32) Int) ListLongMap!2913)

(assert (=> b!206165 (= lt!105373 (getCurrentListMapNoExtraKeys!406 _keys!825 lt!105372 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!206165 (= lt!105372 (array!9541 (store (arr!4520 _values!649) i!601 (ValueCellFull!2239 v!520)) (size!4845 _values!649)))))

(assert (=> b!206165 (= lt!105365 (getCurrentListMapNoExtraKeys!406 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!206166 () Bool)

(declare-fun res!99827 () Bool)

(assert (=> b!206166 (=> (not res!99827) (not e!134779))))

(declare-datatypes ((List!2903 0))(
  ( (Nil!2900) (Cons!2899 (h!3541 (_ BitVec 64)) (t!7842 List!2903)) )
))
(declare-fun arrayNoDuplicates!0 (array!9542 (_ BitVec 32) List!2903) Bool)

(assert (=> b!206166 (= res!99827 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2900))))

(declare-fun b!206167 () Bool)

(declare-fun e!134778 () Bool)

(declare-fun tp_is_empty!5165 () Bool)

(assert (=> b!206167 (= e!134778 tp_is_empty!5165)))

(declare-fun b!206168 () Bool)

(assert (=> b!206168 (= e!134776 true)))

(assert (=> b!206168 (= lt!105368 (+!489 lt!105370 lt!105367))))

(declare-fun lt!105371 () Unit!6273)

(declare-fun addCommutativeForDiffKeys!187 (ListLongMap!2913 (_ BitVec 64) V!6533 (_ BitVec 64) V!6533) Unit!6273)

(assert (=> b!206168 (= lt!105371 (addCommutativeForDiffKeys!187 lt!105365 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun res!99828 () Bool)

(assert (=> start!20662 (=> (not res!99828) (not e!134779))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20662 (= res!99828 (validMask!0 mask!1149))))

(assert (=> start!20662 e!134779))

(declare-fun e!134775 () Bool)

(declare-fun array_inv!2979 (array!9540) Bool)

(assert (=> start!20662 (and (array_inv!2979 _values!649) e!134775)))

(assert (=> start!20662 true))

(assert (=> start!20662 tp_is_empty!5165))

(declare-fun array_inv!2980 (array!9542) Bool)

(assert (=> start!20662 (array_inv!2980 _keys!825)))

(assert (=> start!20662 tp!18959))

(declare-fun mapIsEmpty!8816 () Bool)

(declare-fun mapRes!8816 () Bool)

(assert (=> mapIsEmpty!8816 mapRes!8816))

(declare-fun mapNonEmpty!8816 () Bool)

(declare-fun tp!18958 () Bool)

(declare-fun e!134773 () Bool)

(assert (=> mapNonEmpty!8816 (= mapRes!8816 (and tp!18958 e!134773))))

(declare-fun mapRest!8816 () (Array (_ BitVec 32) ValueCell!2239))

(declare-fun mapKey!8816 () (_ BitVec 32))

(declare-fun mapValue!8816 () ValueCell!2239)

(assert (=> mapNonEmpty!8816 (= (arr!4520 _values!649) (store mapRest!8816 mapKey!8816 mapValue!8816))))

(declare-fun b!206169 () Bool)

(declare-fun res!99830 () Bool)

(assert (=> b!206169 (=> (not res!99830) (not e!134779))))

(assert (=> b!206169 (= res!99830 (= (select (arr!4521 _keys!825) i!601) k!843))))

(declare-fun b!206170 () Bool)

(declare-fun res!99835 () Bool)

(assert (=> b!206170 (=> (not res!99835) (not e!134779))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!206170 (= res!99835 (validKeyInArray!0 k!843))))

(declare-fun b!206171 () Bool)

(declare-fun res!99831 () Bool)

(assert (=> b!206171 (=> (not res!99831) (not e!134779))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9542 (_ BitVec 32)) Bool)

(assert (=> b!206171 (= res!99831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!206172 () Bool)

(declare-fun res!99829 () Bool)

(assert (=> b!206172 (=> (not res!99829) (not e!134779))))

(assert (=> b!206172 (= res!99829 (and (= (size!4845 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4846 _keys!825) (size!4845 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!206173 () Bool)

(assert (=> b!206173 (= e!134773 tp_is_empty!5165)))

(declare-fun b!206174 () Bool)

(assert (=> b!206174 (= e!134775 (and e!134778 mapRes!8816))))

(declare-fun condMapEmpty!8816 () Bool)

(declare-fun mapDefault!8816 () ValueCell!2239)

