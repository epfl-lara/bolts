; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20488 () Bool)

(assert start!20488)

(declare-fun b_free!5135 () Bool)

(declare-fun b_next!5135 () Bool)

(assert (=> start!20488 (= b_free!5135 (not b_next!5135))))

(declare-fun tp!18436 () Bool)

(declare-fun b_and!11899 () Bool)

(assert (=> start!20488 (= tp!18436 b_and!11899)))

(declare-fun b!203023 () Bool)

(declare-fun res!97474 () Bool)

(declare-fun e!132948 () Bool)

(assert (=> b!203023 (=> (not res!97474) (not e!132948))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9206 0))(
  ( (array!9207 (arr!4353 (Array (_ BitVec 32) (_ BitVec 64))) (size!4678 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9206)

(assert (=> b!203023 (= res!97474 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4678 _keys!825))))))

(declare-fun b!203024 () Bool)

(declare-fun res!97469 () Bool)

(assert (=> b!203024 (=> (not res!97469) (not e!132948))))

(declare-datatypes ((List!2776 0))(
  ( (Nil!2773) (Cons!2772 (h!3414 (_ BitVec 64)) (t!7715 List!2776)) )
))
(declare-fun arrayNoDuplicates!0 (array!9206 (_ BitVec 32) List!2776) Bool)

(assert (=> b!203024 (= res!97469 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2773))))

(declare-fun b!203025 () Bool)

(declare-fun e!132952 () Bool)

(declare-fun tp_is_empty!4991 () Bool)

(assert (=> b!203025 (= e!132952 tp_is_empty!4991)))

(declare-fun mapIsEmpty!8555 () Bool)

(declare-fun mapRes!8555 () Bool)

(assert (=> mapIsEmpty!8555 mapRes!8555))

(declare-fun b!203026 () Bool)

(declare-fun e!132946 () Bool)

(declare-fun e!132949 () Bool)

(assert (=> b!203026 (= e!132946 e!132949)))

(declare-fun res!97472 () Bool)

(assert (=> b!203026 (=> res!97472 e!132949)))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!203026 (= res!97472 (= k!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!6301 0))(
  ( (V!6302 (val!2540 Int)) )
))
(declare-datatypes ((tuple2!3848 0))(
  ( (tuple2!3849 (_1!1934 (_ BitVec 64)) (_2!1934 V!6301)) )
))
(declare-datatypes ((List!2777 0))(
  ( (Nil!2774) (Cons!2773 (h!3415 tuple2!3848) (t!7716 List!2777)) )
))
(declare-datatypes ((ListLongMap!2775 0))(
  ( (ListLongMap!2776 (toList!1403 List!2777)) )
))
(declare-fun lt!102275 () ListLongMap!2775)

(declare-fun lt!102268 () ListLongMap!2775)

(assert (=> b!203026 (= lt!102275 lt!102268)))

(declare-fun lt!102271 () ListLongMap!2775)

(declare-fun lt!102274 () tuple2!3848)

(declare-fun +!420 (ListLongMap!2775 tuple2!3848) ListLongMap!2775)

(assert (=> b!203026 (= lt!102268 (+!420 lt!102271 lt!102274))))

(declare-fun lt!102266 () ListLongMap!2775)

(declare-fun lt!102273 () ListLongMap!2775)

(assert (=> b!203026 (= lt!102266 lt!102273)))

(declare-fun lt!102276 () ListLongMap!2775)

(assert (=> b!203026 (= lt!102273 (+!420 lt!102276 lt!102274))))

(declare-fun lt!102267 () ListLongMap!2775)

(assert (=> b!203026 (= lt!102275 (+!420 lt!102267 lt!102274))))

(declare-fun zeroValue!615 () V!6301)

(assert (=> b!203026 (= lt!102274 (tuple2!3849 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun mapNonEmpty!8555 () Bool)

(declare-fun tp!18437 () Bool)

(declare-fun e!132951 () Bool)

(assert (=> mapNonEmpty!8555 (= mapRes!8555 (and tp!18437 e!132951))))

(declare-datatypes ((ValueCell!2152 0))(
  ( (ValueCellFull!2152 (v!4506 V!6301)) (EmptyCell!2152) )
))
(declare-fun mapValue!8555 () ValueCell!2152)

(declare-datatypes ((array!9208 0))(
  ( (array!9209 (arr!4354 (Array (_ BitVec 32) ValueCell!2152)) (size!4679 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9208)

(declare-fun mapKey!8555 () (_ BitVec 32))

(declare-fun mapRest!8555 () (Array (_ BitVec 32) ValueCell!2152))

(assert (=> mapNonEmpty!8555 (= (arr!4354 _values!649) (store mapRest!8555 mapKey!8555 mapValue!8555))))

(declare-fun b!203027 () Bool)

(declare-fun res!97475 () Bool)

(assert (=> b!203027 (=> (not res!97475) (not e!132948))))

(assert (=> b!203027 (= res!97475 (= (select (arr!4353 _keys!825) i!601) k!843))))

(declare-fun res!97476 () Bool)

(assert (=> start!20488 (=> (not res!97476) (not e!132948))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20488 (= res!97476 (validMask!0 mask!1149))))

(assert (=> start!20488 e!132948))

(declare-fun e!132947 () Bool)

(declare-fun array_inv!2867 (array!9208) Bool)

(assert (=> start!20488 (and (array_inv!2867 _values!649) e!132947)))

(assert (=> start!20488 true))

(assert (=> start!20488 tp_is_empty!4991))

(declare-fun array_inv!2868 (array!9206) Bool)

(assert (=> start!20488 (array_inv!2868 _keys!825)))

(assert (=> start!20488 tp!18436))

(declare-fun b!203028 () Bool)

(assert (=> b!203028 (= e!132949 true)))

(declare-fun lt!102277 () tuple2!3848)

(assert (=> b!203028 (= lt!102268 (+!420 lt!102273 lt!102277))))

(declare-datatypes ((Unit!6141 0))(
  ( (Unit!6142) )
))
(declare-fun lt!102272 () Unit!6141)

(declare-fun v!520 () V!6301)

(declare-fun addCommutativeForDiffKeys!136 (ListLongMap!2775 (_ BitVec 64) V!6301 (_ BitVec 64) V!6301) Unit!6141)

(assert (=> b!203028 (= lt!102272 (addCommutativeForDiffKeys!136 lt!102276 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!203029 () Bool)

(assert (=> b!203029 (= e!132951 tp_is_empty!4991)))

(declare-fun b!203030 () Bool)

(declare-fun res!97473 () Bool)

(assert (=> b!203030 (=> (not res!97473) (not e!132948))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!203030 (= res!97473 (and (= (size!4679 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4678 _keys!825) (size!4679 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!203031 () Bool)

(assert (=> b!203031 (= e!132947 (and e!132952 mapRes!8555))))

(declare-fun condMapEmpty!8555 () Bool)

(declare-fun mapDefault!8555 () ValueCell!2152)

