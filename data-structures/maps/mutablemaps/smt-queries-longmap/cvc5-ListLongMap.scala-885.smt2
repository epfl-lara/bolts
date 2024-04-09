; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20418 () Bool)

(assert start!20418)

(declare-fun b_free!5065 () Bool)

(declare-fun b_next!5065 () Bool)

(assert (=> start!20418 (= b_free!5065 (not b_next!5065))))

(declare-fun tp!18227 () Bool)

(declare-fun b_and!11829 () Bool)

(assert (=> start!20418 (= tp!18227 b_and!11829)))

(declare-fun b!201754 () Bool)

(declare-fun e!132211 () Bool)

(declare-fun tp_is_empty!4921 () Bool)

(assert (=> b!201754 (= e!132211 tp_is_empty!4921)))

(declare-fun b!201755 () Bool)

(declare-fun e!132212 () Bool)

(assert (=> b!201755 (= e!132212 true)))

(declare-datatypes ((V!6209 0))(
  ( (V!6210 (val!2505 Int)) )
))
(declare-datatypes ((tuple2!3792 0))(
  ( (tuple2!3793 (_1!1906 (_ BitVec 64)) (_2!1906 V!6209)) )
))
(declare-fun lt!100876 () tuple2!3792)

(declare-datatypes ((List!2727 0))(
  ( (Nil!2724) (Cons!2723 (h!3365 tuple2!3792) (t!7666 List!2727)) )
))
(declare-datatypes ((ListLongMap!2719 0))(
  ( (ListLongMap!2720 (toList!1375 List!2727)) )
))
(declare-fun lt!100870 () ListLongMap!2719)

(declare-fun lt!100875 () tuple2!3792)

(declare-fun lt!100877 () ListLongMap!2719)

(declare-fun +!392 (ListLongMap!2719 tuple2!3792) ListLongMap!2719)

(assert (=> b!201755 (= (+!392 lt!100870 lt!100876) (+!392 lt!100877 lt!100875))))

(declare-datatypes ((Unit!6091 0))(
  ( (Unit!6092) )
))
(declare-fun lt!100879 () Unit!6091)

(declare-fun minValue!615 () V!6209)

(declare-fun v!520 () V!6209)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun lt!100874 () ListLongMap!2719)

(declare-fun addCommutativeForDiffKeys!113 (ListLongMap!2719 (_ BitVec 64) V!6209 (_ BitVec 64) V!6209) Unit!6091)

(assert (=> b!201755 (= lt!100879 (addCommutativeForDiffKeys!113 lt!100874 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!201756 () Bool)

(declare-fun res!96522 () Bool)

(declare-fun e!132217 () Bool)

(assert (=> b!201756 (=> (not res!96522) (not e!132217))))

(declare-datatypes ((array!9070 0))(
  ( (array!9071 (arr!4285 (Array (_ BitVec 32) (_ BitVec 64))) (size!4610 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9070)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((ValueCell!2117 0))(
  ( (ValueCellFull!2117 (v!4471 V!6209)) (EmptyCell!2117) )
))
(declare-datatypes ((array!9072 0))(
  ( (array!9073 (arr!4286 (Array (_ BitVec 32) ValueCell!2117)) (size!4611 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9072)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!201756 (= res!96522 (and (= (size!4611 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4610 _keys!825) (size!4611 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!201757 () Bool)

(declare-fun e!132213 () Bool)

(declare-fun e!132214 () Bool)

(declare-fun mapRes!8450 () Bool)

(assert (=> b!201757 (= e!132213 (and e!132214 mapRes!8450))))

(declare-fun condMapEmpty!8450 () Bool)

(declare-fun mapDefault!8450 () ValueCell!2117)

